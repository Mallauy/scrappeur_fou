require 'rubygems'
require 'nokogiri'   
require 'open-uri' 



#page = Nokogiri::HTML(open("https://coinmarketcap.com/all/views/all/")) 
#puts page.class # => Nokogiri::HTML::Document 


def cryptomonnaies_price 
    price = []
      doc = Nokogiri::HTML(open('https://coinmarketcap.com/all/views/all/'))
      doc.xpath('//a[@class ="price"]/@data-usd').each do |node|
      price << node.text
      end  
    return price
  end

  def cryptomonnaies_name
  crypto_name = []
        doc = Nokogiri::HTML(open('https://coinmarketcap.com/all/views/all/'))
        doc.xpath('//a[@class ="currency-name-container link-secondary"]').each do |node|
        crypto_name << node.text
        end
    return crypto_name
end
 


hash = cryptomonnaies_name.zip(cryptomonnaies_price).to_h
puts hash