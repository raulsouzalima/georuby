require 'geo_ip'

geo = Geolocation.new('http://ip.appspot.com/')

puts geo.my_ip