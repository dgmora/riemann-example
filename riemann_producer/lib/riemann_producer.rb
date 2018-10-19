require 'sinatra'
require 'mettric'

set :bind, '0.0.0.0'

get '/' do
  Mettric.config = { host: 'localhost', port: '5555', app: 'producer' }

  event = params[:event] || 'none'
  tag = params[:tag] || 'untagged'
  description = params[:description] || 'Not-desc'
  Mettric.event(service: "sinatra.producer.#{event}", tags: [tag], description: description)
  "*event processed* event: #{event}, tag #{tag}, description: #{description}"
end
