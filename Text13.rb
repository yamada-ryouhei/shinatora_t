#17回
require 'sinatra'
require 'sinatra/reloader'
require 'active_record'

ActiveRecord::Base.establish_connection(
  "adapter"=> "sqlite3",#設定
  "database"=> "./bbs.db"
)

helpers do#例外処理について（決まり文句である）
    include Rack::Utils
    alias_method :h, :escape_html
end

class Comment < ActiveRecord::Base#ActibeRecord::Baseの内容を含んだクラスを作る
end


get '/' do 
  @comments = Comment.order("id desc").all#上で作ったクラスの内容からid情報を取得させる
  erb :index7
  #拡張子がerbのindex4という名前のファイルを開く
end

post '/new' do 
    Comment.create({:body => params[:body]})#新しくcommentのテーブル内のbodyに文章を追加
    redirect '/'#「/」を返すことで表示をさせる要求に飛ばす
end

post '/delete' do 
    Comment.find(params[:id]).destroy#送られたidのものを削除
end