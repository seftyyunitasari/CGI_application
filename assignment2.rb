require 'cgi'

cgi = CGI.new
cgi.out("type" => "text/html", "charset" => "UTF-8") {
  get = cgi["assignment2"]
  "<html>
  <body>
    <p> The information page of bitter groud crops with poor quality </p>
    <p> #{get} </p>
  </body>
</html>"
}
