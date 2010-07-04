# -*- coding: utf-8 -*-
require "net/http"
require "uri"

require "rubygems"
require "hpricot"
require "socket"
require "udpclient"

http_server_addr="gcwh.ipva.cn"
http_server_port=80
username="admin"
password="8888"
data_url_path="/Login.aspx"

start_date="2010/05/01"
start_hour="0"
start_minute="0"
start_second="0"

end_hour="23"
end_minute="59"
end_second="59"

channel=1

udp_server_addr="localhost"
udp_server_port=4321

freq=2 #freq in seconds

udpclient=UDPClient.new(udp_server_addr,udp_server_port)

while true

# http basic authenticate
Net::HTTP.start(http_server_addr,http_server_port) do |http|

  # build search params
  start_time=start_date+start_hour+start_minute+start_second
  end_time=start_date+end_hour+end_minute+end_second
  search_params="Count "+channel.to_s+" "+start_time+" " +end_time;
  puts search_params

  # http basic auth
  req=Net::HTTP::Get.new(data_url_path)
  req.basic_auth 'admin','8888'
  res=http.request(req)
  #puts res.body if res

  # post search params
  req=Net::HTTP::Post.new(data_url_path)
  req.set_form_data({"cmd" =>search_params})
  res=http.request(req)
  doc=Hpricot(res.body)
  puts doc
  doc.search('table tr td').each do |item|
    (item/'a').each do |nav|
      puts nav.attributes['href']
      puts nav.inner_html
   end
 end
end


# get login form
#url=URI.parse('http://localhost:3000/login')
#req_login=Net::HTTP::Get.new(url.path)
#res_login=Net::HTTP.start(url.host,url.port) do |http|
 # http.get('/login')
#end

# get authenticity token
#login_doc=Hpricot(res_login.body)
#authenticity_token=login_doc.at("input[@name='authenticity_token']")['value']

# post form data
#res=Net::HTTP.post_form(URI.parse("http://localhost:3000/sessions"),{ 'login'=>'admin','password'=>'wts7532','authenticity_token'=>:authenticity_token })

#puts "login...passed" if res




# send udp data to some port
  puts "sending data to "+udp_server_addr.to_s+udp_server_port.to_s

  data="tt"
  udpclient.send_data(data)
  sleep freq
end

