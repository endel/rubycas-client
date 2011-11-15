require 'sinatra'
require 'casclient'
require 'casclient/integration/filter'
require 'casclient/integration/adapter/sinatra'

CASClient::Integration::Filter.configure(
  #:cas_base_url => "https://mzukowski.urbacon.net:6543/cas",
  :cas_base_url => "http://localhost:8081",
  :adapter => CASClient::Integration::Adapter::Sinatra
)

before do
  CASClient::Integration::Filter.filter(self)
end

get '/' do
  "Has redirect? #{session[:cas_redirect]}<br /> Referer: #{request.referer}<br />Session: #{session.inspect}"
end

get '/logout' do
  logout!
end

get '/foo' do
  "foo"
end

get '/bar' do
  "bar"
end
