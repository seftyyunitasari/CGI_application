require 'cgi'

cgi = CGI.new
cgi.out("type" => "text/html", "charset" => "UTF-8") {
  get = cgi["assignment1"]
  "<html>
  <body>
    <p> The bitter groud crops information page with self-consumption crops data is excluded </p>
    <p> #{get} </p>
  </body>
</html>"
}
