# require libraries/modules here
require "nokogiri"
require "pry"

def create_project_hash
  # write your code here
  html = File.read('fixtures/kickstarter.html')

  kickstarter = nokogiri::HTML(open(html))

  binding.pry
end
