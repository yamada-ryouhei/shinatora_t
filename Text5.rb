#6回
require 'sinatra'
require 'sinatra/reloader'

get '/' do #特に変わりなし「/」要求の時の処理
  erb :index
  #拡張子がerbのindexという名前のファイルを開く
end

#新しくviewsというファイルを作ればその下にファイルを作ってそこのファイルからページを作れる
