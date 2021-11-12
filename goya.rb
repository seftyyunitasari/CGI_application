require 'cgi'

cgi = CGI.new
cgi.out("type" => "text/html", "charset" => "UTF-8") {
  get = cgi["goya"]
  "<html>
  <body>
    <p>The size of bitter gourd and the information of the person who sold it are as follows</p>
    <p> #{get} </p>
  </body>
</html>"
}
