require 'webrick'

server = WEBrick::HTTPServer.new({
  :DocumentRoot => '.',
  :CGIInterpreter => WEBrick::HTTPServlet::CGIHandler:: Ruby,
  :Port => 3000,
  })

['INT', 'TERM'].each { |signal|
  Signal.trap(signal) {server.shutdown}
}

server.mount('/test', WEBrick::HTTPServlet::ERBHandler, 'test.html.erb')
server.mount('/indicate.cgi', WEBrick::HTTPServlet::CGIHandler, 'indicate.rb')
server.mount('/goya.cgi', WEBrick::HTTPServlet::CGIHandler, 'goya.rb')
server.mount('/', WEBrick::HTTPServlet::ERBHandler, 'assignment.html.erb')
server.mount('/assignment1.cgi', WEBrick::HTTPServlet::CGIHandler, 'assignment1.rb')
server.mount('/assignment2.cgi', WEBrick::HTTPServlet::CGIHandler, 'assignment2.rb')

server.start
