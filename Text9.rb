#10回
require 'sinatra'
require 'sinatra/reloader'


before do#どの要求が来ようが初めにやる処理
  @author ="yamada"
end

before '/admin/*' do#最初に行うが、要求がついているbefore処理
  @mes="admin area"
end

after do
    logger.info "page displayed successfully"#ページの表示が終わったらログに表示する
end

#今回の追加部分（共通関数）
helpers do
    #helpersの中に関数を宣言しておけば後でその処理を関数として使用可能
    def strong(s)#strong(値)が来るとここに飛んでくる
        "<strong>#{s}</strong>"#ここで文字を太文字にする処理をしている
    end
end


get '/' do #１つ目の要求と処理
  #"hello #{n}"　いつもならこんなふうに使う
  @title = "main index3"
  @content ="main contend by " + @author #最初に宣言したのでここでも使用可能
  erb :index3
  #拡張子がerbのindex3という名前のファイルを開く(再利用)
end

get '/about' do #２つ目の要求と種類
  #"hello #{n}"　いつもならこんなふうに使う
  @title = "about this page"
  @content ="this page is ... by " +strong(@author) #ここでも共通のものを使用可能
  @email="os.bb-choper-14"
  erb :index3_2
  #拡張子がerbのindex3という名前のファイルを開く(再利用)
end

#before afterで共通の最初と最後の処理をすることができる
#要求追加で細かい部分も設定可能