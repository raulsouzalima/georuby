require 'rubygems'
require 'sinatra'
require 'geo_ip.rb'

set :public, File.dirname(__FILE__) + '/public'

before do
  headers "Content-type" => "text/html; charset=utf-8"
end


get "/" do
  @title = "Getting location via IP with Ruby"
  @geo = Geolocation.new
  @geo_url = @geo.get_xml
  erb :index
end