require 'nokogiri'
require 'open-uri'

html = URI.open("https://flatironschool.com/")

doc = Nokogiri::HTML(html)
courses = doc.css("section.column-highlights:nth-child(2) > div:nth-child(1) > div:nth-child(2) > div:nth-child(1)")

courses.each do |course|
  puts course.text.strip
end
