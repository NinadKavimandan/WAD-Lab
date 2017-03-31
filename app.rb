require 'sinatra'

get '/' do
	return 'Hello World'
end
get '/inside' do
	return 'Hi!'
end
