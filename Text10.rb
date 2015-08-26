#11回 12回 13回
require 'sinatra'
require 'sinatra/reloader'
require 'active_record'

ActiveRecord::Base.establish_connection(
  "adapter"=> "sqlite3",#設定
  "database"=> "./bbs.db"
)

class Comment < ActiveRecord::Base#ActibeRecord::Baseの内容を含んだクラスを作る
end


get '/' do 
  @comments = Comment.order("id desc").all#上で作ったクラスの内容からid情報を取得させる
  erb :index4
  #拡張子がerbのindex4という名前のファイルを開く
end

