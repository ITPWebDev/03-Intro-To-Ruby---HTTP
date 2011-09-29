# #### _Part of [ITP Web Dev Workshop](http://itpwebdev.github.com) Week 03 Ruby + HTTP = Sinatra._

# [Sinatra](http://www.sinatrarb.com/) is a DSL (domain specific language) for writing web apps in Ruby.

# To use Sinatra you first need Ruby.
# Then open up the Terminal and install Sinatra like so:
#
#     gem install sinatra
#
# Then make a new folder and create a file called
# 
#     simple_sinatra.rb
#
# Open up that file in your text editor.

# Tell Ruby to look at all of our gems first and then look for the Sinatra gem.
require 'rubygems'
require 'sinatra'

# A web application would be terrible without any URLs.
# A URL is a route, it tells the server where to go.
# With Sinatra routes are defined in blocks that start with
# the HTTP verb. We'll write the first route,
# `"/"` which is the landing page of most sites.

# `get` is the type of HTTP request. The other types are `post`,
# `put` and `delete`. The `"/"` tells Sinatra what to respond
# to after the top level domain (.com, .net etc.).
get "/" do
# Inside the the block we can put pretty much any Ruby code.
# Like all Ruby blocks the last line of the block gets returned.
  "Hello World!"
# End the block
end

# Now we've got the simplest web app.
# Launch the application with 
#
#     ruby simple_sinatra.rb
#
# Point your browser to `http://localhost:4567/`

# A web app with only one page is pretty boring. Let's add another page.

# This is our about page, accessed through `http://localhost:4567/about`.
get "/about" do
  # We'll use some HTML markup here. Since Ruby only returns the last
  # line of a block we'll save our desired output to a variable `output`.
  output = "<h1>About</h1>"
  output += "<p>I wrote this web page with Sinatra, and no templates.</p>"
  output += "<p>Thus it was rather grueling to write html.</p>"
  # Then place `output` in the last line of the block.
  output
end