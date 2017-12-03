require 'logger'
require 'socket'

port = 8080
server = TCPServer.new port

$stdout.sync = true
logger = Logger.new($stdout)

logger.info "Serving at port #{port}"

while session = server.accept
    request = session.gets

    session.print "HTTP/1.1 200\r\n"
    session.print "Content-Type: text/html\r\n"
    session.print "\r\n"
    session.print "Ruby is running..."

    session.close
end


