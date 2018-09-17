require_relative 'config/environment'

class App < Sinatra::Base



  configure do
  enable :sessions
  set :session_secret, "secret"
end

  GET "/" do
  session["form"] = "newForm"
  #renders a form to buy somethibng
		erb :item
	end

  POST "/checkout" do
    return cart
    session["form"] = "newForm"
  		erb :index
  	end
end
