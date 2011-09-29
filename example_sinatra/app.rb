# to run this app, navigate Terminal to this directory
# and run
#
#   ruby app.rb
#
# then point your browser to http://localhost:4567

require 'rubygems' # use gems
require 'sinatra' # use the sinatra gem

get "/" do
  "Hello World!"
end

get "/:name" do
  # Wrap the route parameter in H1 tags
  output = "<h1>"+params[:name]+"</h1>"
  # place a link to the root page
  output += "<a href='/'>go back</a>"
  # respond with the output.
  output
end

# Note: This route is inaccessible because of the :name param route above.
get "/page2" do
  "here we are on page two."
end