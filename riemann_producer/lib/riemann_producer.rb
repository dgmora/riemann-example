require 'sinatra'
require 'mettric'

set :bind, '0.0.0.0'

get '/' do
  event = params[:event] || 'none'
  tag = params[:tag] || 'untagged'
  description = params[:description] || 'Not-desc'
  🛎  service: "sinatra.producer.#{event}", tags: [tag], description: description
  "*event processed* event: #{event}, tag #{tag}, description: #{description}"
end
