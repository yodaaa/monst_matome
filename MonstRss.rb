require 'rss'
require 'csv'
require 'time'

module MonstRss
  #まとめサイト list
  @@matmome_url = {"monstjapan"=>"http://monst-japan.com/feed/",
    "monstnewssokuho"=>"http://monst-news.net/feed/",
    "monstagent"=>"http://matome-agent56.blog.jp/index.rdf",
    "monstsokuho"=>"http://monst-sokuhou.blog.jp/index.rdf",
    "monstappbako"=>"http://monst-sokuhou.blog.jp/index.rdf",
    "monschannel"=>"http://monsterstrikewiki2ch.blog.fc2.com/?xml",
    "kamesoku"=>"http://blog.livedoor.jp/monstsoku/index.rdf",
    "monst24"=>"http://monst24.jp/feed/",
    "monstsoku"=>"http://www.mstsoku.com/feed",
    "monstmatomember"=>"http://www.mnst-matome.com/index.rdf"}

  #Get Rss XML
  def get_rss(matomename)
    url = @@matmome_url[matomename]
    rss = RSS::Parser.parse(url)
    puts rss
  end

  #Get Title(matomename)
  def get_rsstitle(matomename)
    url = @@matmome_url[matomename]
    rss = RSS::Parser.parse(url)
    rss.items.each do |item|
      puts item.title
    end
  end

  #Get Url(matomename)
  def get_rssurl(matomename)
    url = @@matmome_url[matomename]
    rss = RSS::Parser.parse(url)
    rss.items.each do |item|
      puts item.link
    end
  end

  #Get date(matomename)
  def get_rssdate(matomename)
    url = @@matmome_url[matomename]
    rss = RSS::Parser.parse(url)
    rss.items.each do |item|
      puts item.date
    end
  end

  #Get category(matomename)
  def get_rsscategory(matomename)
    url = @@matmome_url[matomename]
    rss = RSS::Parser.parse(url)
    rss.items.each do |item|
      puts item.category
    end
  end

  #Get ALL matome
  def get_allrss
    @@matmome_url.values.each do |url|
      rss = RSS::Parser.parse(url)
      rss.items.each do |item|
        puts "#{item.date}, #{item.title}, #{item.link}"
      end
      puts
    end
  end


  #output csv
  def csv_output
    CSV.open("./file.csv", "wb") do |csv|
      @@matmome_url.values.each do |url|
        rss = RSS::Parser.parse(url)
        rss.items.each do |item|
          csv <<  ["#{item.date}", "#{item.title}", "#{item.link}"]
        end
      end
    end
  end

###############################################################

  def rss_monstjapan
    #http://monst-japan.com/
    url = "http://monst-japan.com/feed/"
    rss = RSS::Parser.parse(url)
    rss.items.each do |item|
      puts item.title
      puts item.link
      puts item.date
    end
  end

  def rss_monstnewssokuho
    #http://monst-news.net
    url = "http://monst-news.net/feed/"
    rss = RSS::Parser.parse(url)
    rss.items.each do |item|
      puts item.title
      puts item.link
      puts item.date
    end
  end

  def rss_monstagent
    #http://matome-agent56.blog.jp/
    url = "http://matome-agent56.blog.jp/index.rdf"
    rss = RSS::Parser.parse(url)
    rss.items.each do |item|
      puts item.title
      puts item.link
      puts item.date
    end
  end

  def rss_monstsokuho
    #http://monst-sokuhou.blog.jp
    url = "http://monst-sokuhou.blog.jp/index.rdf"
    rss = RSS::Parser.parse(url)
    rss.items.each do |item|
      puts item.title
      puts item.link
      puts item.date
    end
  end

  def rss_monstappbako
    #http://monst.appbako.com
    url = "http://monst.appbako.com/feed"
    rss = RSS::Parser.parse(url)
    rss.items.each do |item|
      puts item.title
      puts item.link
      puts item.date
    end
  end

  def rss_monschannel
    #http://monsterstrikewiki2ch.blog.fc2.com
    url = "http://monsterstrikewiki2ch.blog.fc2.com/?xml"
    rss = RSS::Parser.parse(url)
    rss.items.each do |item|
      puts item.title
      puts item.link
      puts item.date
    end
  end

  def rss_kamesoku
    #http://blog.livedoor.jp/monstsoku/
    url = "http://blog.livedoor.jp/monstsoku/index.rdf"
    rss = RSS::Parser.parse(url)
    rss.items.each do |item|
      puts item.title
      puts item.link
      puts item.date
    end
  end

  def rss_monst24
    #http://monst24.jp/
    url = "http://monst24.jp/feed/"
    rss = RSS::Parser.parse(url)
    rss.items.each do |item|
      puts item.title
      puts item.link
      puts item.date
    end
  end

  def rss_monstsoku
    #http://www.mstsoku.com/
    url = "http://www.mstsoku.com/feed"
    rss = RSS::Parser.parse(url)
    rss.items.each do |item|
      puts item.title
      puts item.link
      puts item.date
    end
  end

  def rss_monstmatomember
    #http://www.mnst-matome.com/
    url = "http://www.mnst-matome.com/index.rdf"
    rss = RSS::Parser.parse(url)
    rss.items.each do |item|
      puts item.title
      puts item.link
      puts item.date
    end
  end
end
