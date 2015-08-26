require 'sinatra'
require 'sinatra/reloader'
#上の文章を追加したらコンパイルを再度しなくてもちゃんと追加部分が反映された


get '/' do
    "hello world"
end
#実行済み


#前回の追加部分　始まり
get '/about' do
    "about this site page"
end
#前回の追加部分　終わり