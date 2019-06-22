# require libraries/modules here
require "nokogiri"
require "pry"

def create_project_hash
  # write your code here
  html = File.read('fixtures/kickstarter.html')

  kickstarter = Nokogiri::HTML(html)

  projects = {}

  kickstarter.css("li.project.grid_4").each do |project|
    projects[project] = {}
    
  end

  projects
end

create_project_hash

# projects: kickstarter.css("li.project.grid_4")
# titles: kickstarter.css("h2.bbcard_name strong a").text
# image link: kickstarter.css("div.project-thumbnail a").attribute("src").value
# description: kickstarter.css("p.bbcard_blurb").text
# location: kickstarter.css("ul.project-meta li a span.location-name").text
# percent_funded: kickstarter.css("ul.project-stats li.first.funded strong").text.gsub("%", "").to_i 