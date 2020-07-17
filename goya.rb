# データを受け取り、返却するCGIプログラムの起動
require 'cgi'
cgi = CGI.new
# データを受け取った後、HTMLの形式でレスポンスを返す
cgi.out("type" => "text/html", "charset" => "UTF-8") {
  # 情報の目印とした"goya"のデータを cgi['goya']と言う記述で取り出し、ローカル変数に代入する
  if cgi.has_key?('goya')
    get = cgi['goya']
    # HTMLでレスポンスを返却する
    "<html>
      <body>
        <p>ゴーヤの大きさと売った相手の情報は下記になります</p>
        文字列：#{get}
      </body>
    </html>"
  elsif cgi.has_key?('goya_not_self')
    get_goya_not_self = cgi['goya_not_self']
    "<html>
      <body>
        <p>譲渡先が自家消費以外のゴーヤ情報は下記になります<p>
       #{get_goya_not_self}
      </body>
    </html>"
  elsif cgi.has_key?('goya_false')
    get_goya_false = cgi['goya_false']
    "<html>
      <body>
        <p>品質が悪いゴーヤの情報は以下になります</p>
        #{get_goya_false}
      </body>
    </html>"
  end
}
