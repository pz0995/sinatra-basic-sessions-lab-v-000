require_relative 'config/environment'

class App < Sinatra::Base



  configure do
  enable :sessions
  set :session_secret, "secret"
end

  GET "/form" do
  session["form"] = "newForm"
		erb :index
	end

  POST "/checkout" do
    session["form"] = "newForm"
    @session = session
  		erb :index
  	end
end
