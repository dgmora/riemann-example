require 'sinatra'

require 'rubygems'
require 'bundler'
Bundler.require(:default)

set :bind, '0.0.0.0'
configure do
  Mettric.config = { host: 'riemann-server', port: '5555', app: 'producer' }
end

get '/' do


  event = params[:event] || 'none'
  tag = params[:tag] || 'untagged'
  description = params[:description] || 'Not-desc'
  result = nil
    result = Mettric.event(service: "sinatra.producer.#{event}", tags: [tag], description: description)
  "*event processed* event: #{event}, tag #{tag},"\
    " description: #{description}\nQueue size: #{result}"
end
