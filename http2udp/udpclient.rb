require 'socket'

class UDPClient
  def initialize(host, port)
    @host = host
    @port = port
  end

  def send_data(data)
    @socket = UDPSocket.open
    @socket.connect(@host, @port)
    @socket.send(data, 0, @host, @port)      
   end
end
