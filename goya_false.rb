require 'cgi'
cgi = CGI.new
cgi.out("type" => "text/html", "charset" => "UTF-8") {
  get = cgi['goya_false']
  "<html>
    <body>
      <p>品質が悪いゴーヤの情報は以下になります</p>
      #{get}
    </body>
  </html>"
}
