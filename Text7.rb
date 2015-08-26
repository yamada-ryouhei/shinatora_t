#8回
require 'sinatra'
require 'sinatra/reloader'

get '/' do #１つ目の要求と処理
  #"hello #{n}"　いつもならこんなふうに使う
  @title = "main index3"
  @content ="main contend"
  erb :index3
  #拡張子がerbのindex3という名前のファイルを開く
end

get '/about' do #２つ目の要求と種類
  #"hello #{n}"　いつもならこんなふうに使う
  @title = "about this page"
  @content ="this page is ..."
  @email="os.bb-choper-14"
  erb :index3_2
  #拡張子がerbのindex3という名前のファイルを開く
end

#複数のページも対応させられる
#layoutページを作成したら共通部分を省略できる