#5回
require 'sinatra'
require 'sinatra/reloader'

=begin
get '/from/*/to/*' do |f,t|
    #「*」を用いてワイルドカードとして使うことができる
    "from #{f} to #{t}"
    #ワイルドカードを用いた変数の表示
end
=end

get %r{/users/([0-9]*)} do |i|#0～9の範囲で要求をもらうように指定(複数回(正数値))
  # 正規表現でも記述することができる
  "user id = #{i}"
end

#getの要求の文章の後に開業すると上手くいかなかった
#おそらく次の１行をやるからこその問題？