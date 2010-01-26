class Geolocation
  require 'rubygems'
  require 'hpricot'
  require 'open-uri'
 
  def initialize()
    @hp = Hpricot(open('http://ip.appspot.com/'))
  end
 
  def my_ip
    @ip = @hp.inner_html.gsub("\n",'')
  end

  def get_xml
    my_ip
    @url = "http://geoip.pidgets.com/?ip=#{@ip}&format=xml"
    @geo_html = Hpricot(open(@url))
  end

end