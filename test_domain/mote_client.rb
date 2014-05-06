require 'net/http'
require 'json'

class MoteClient

  def initialize(client_ip,client_port)
    @client_ip = client_ip
    @client_port = client_port
  end

  def execute(request_hash)
    http = Net::HTTP.new(execute_uri.host, execute_uri.port)
    response = http.request(create_request(request_hash))
    JSON.parse(response.body,{:create_additions => false})
  end

  private

  def execute_uri
    URI.parse("http://#{@client_ip}:#{@client_port}/execute")
  end

  def create_request(request_hash)
    req = Net::HTTP::Get.new(execute_uri.path)
    req.body = request_hash.to_json
    req
  end

end