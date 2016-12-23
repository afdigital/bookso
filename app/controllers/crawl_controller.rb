class CrawlController < ApplicationController

  def index
    # binding.pry
    url = params[:url]
    document = Nokogiri::HTML(HTTParty.get("http://#{url})"))
    title = document.css("title").first.text
    image = document.css("img").first.attr("src") rescue nil
    para = document.css("p").first.text rescue nil

    render json: {
      title: title,
      image: image,
      para: para
    }
  end




end