#４回
require 'sinatra'
require 'sinatra/reloader'


=begin
get '/hello/:name' do #要求の後に「:」で区切って変数指定
    "hello #{params[:name]}"
    #文字列の中で扱うときは#{params[:変数名]}で表示
end

=end

get '/hello/:name/?:tosi?' do |n,l|#先にここで指定したら使うときに楽になる(複数も可能)
    "hello #{n} #{l}"
    #nのみで表示できる
end
#「?」の追加で便利になるが,「/」は必須?
#動画ではできていたので何かが間違っているとは思いますがよくわかりませんでした
