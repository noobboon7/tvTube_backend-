require 'rest-client'
require 'json'
require 'pry'

    url = "https://api.tvmaze.com/shows"

    response = RestClient.get(url)
    data = JSON.parse(response)
    na = "not available"

 data.map do |key|
    name = key["name"]
    genre = key["genres"].nil? ? na : key["genres"]
    runtime = key["runtime"].nil? ? na : key["runtime"]
    website = key["officialSite"].nil? ? na : key["officialSite"]
    rating = key["rating"].nil? ? na : key["rating"]
    thumbnail = key["image"]["medium"].nil? ? img : key["image"]["medium"]
    poster = key["image"]["original"].nil? ? img : key["image"]["original"]
    summary = key["summary"].nil? ? na : key["summary"].gsub("</p>"," ").gsub("<p>"," ").gsub("</b>"," ").gsub("<b>"," ").gsub("<i>"," ").gsub("</i>"," ")

Tvshow.create(name: name,
  genre: genre,
  runtime: runtime,
  rating: rating,
  thumbnail: thumbnail,
  poster: poster,
  summary: summary)
puts "Saved " + name
  end
