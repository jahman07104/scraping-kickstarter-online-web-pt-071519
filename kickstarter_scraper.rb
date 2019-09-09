# require libraries/modules here

require 'pry'
require 'nokogiri'

 def create_project_hash
  html = File.read('fixtures/kickstarter.html')
  kickstarter = Nokogiri::HTML(html)
 
  projects = {}
 
  kickstarter.css("li.project.grid_4").each do |project|
    title = project.css("h2.bbcard_name strong a").text
    projects[title.to_sym] = {
      :image_link => project.css("div.project-thumbnail a img").attribute("src").value,
      :description => project.css("p.bbcard_blurb").text,
      :location => project.css("ul.project-meta span.location-name").text,
      :percent_funded => project.css("ul.project-stats li.first.funded strong").text.gsub("%","").to_i
    }
  end
 
  # return the projects hash
  projects
end
def create_project_hash
  projects = {}
 
  kickstarter.css("li.project.grid_4").each do |project|
    title = project.css("h2.bbcard_name strong a").text
    projects[title.to_sym] = {}
  end
 
  # return the projects hash
  projects
end
# def create_project_hash
  
#   html = File.read('fixtures/kickstarter.html')
 
# kickstarter = Nokogiri::HTML(html)
# # projects: kickstarter.css("li.project.grid_4")
# kickstarter.css("li.project.grid_4").each do |project|
#   binding.pry
#   #try putting the pry here
#     projects[project] = {}
#   end
# #project.css("h2.bbcard_name strong a").text





# # write your code here
# end
# create_project_hash

require 'nokogiri'
require "pry"

def create_project_hash
  
  html = File.read('fixtures/kickstarter.html')
 
kickstarter = Nokogiri::HTML(html)
 #binding.pry

# write your code here
end

