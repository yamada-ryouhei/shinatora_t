#7回
require 'sinatra'
require 'sinatra/reloader'

get '/:name' do |n| #
  #"hello #{n}"　いつもならこんなふうに使う
  @name = n#インスタンス変数のように宣言　下のテンプレートで使用可能になる
  @title ="main index2"#複数作成可能
  erb :index2
  #拡張子がerbのindexという名前のファイルを開く
end

#新しくviewsというファイルを作ればその下にファイルを作ってそこのファイルからページを作れる
