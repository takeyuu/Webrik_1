require 'cgi'
cgi = CGI.new
cgi.out("type" => "text/html", "charset" => "UTF-8") {
  get = cgi['goya_not_self']
  "<html>
    <body>
      <p>譲渡先が自家消費以外のゴーヤ情報は下記になります<p>
     #{get}
    </body>
  </html>"
}
