require 'mecab'
require './MonstRss'
include MonstRss

=begin
rss_monstjapan
rss_monstnewssokuho
rss_monstagent*
rss_monstsokuho*
rss_monstappbako*
rss_monschannel*
rss_kamesoku*
rss_monst24 category機能してない
rss_monstsoku ほぼcategory機能してない xml取れない
rss_monstmatomember*
=end

#get_rsstitle("monstjapan")
#get_rsscategory("monstsoku")
#get_allrss



#c = MeCab::Tagger.new
#puts c.parse("【モンスト】※真骨頂※もはやパワー型の域！”4万を超える攻撃力”へ続々と超強化")
rss_sort
