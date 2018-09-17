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
      #params from the form and add it to the session hash. The key should be 
      #item and the value should be the item the user entered to the purchase. Make sure to 
      # store the session hash in an instance variable that you can access in the views.
  	end
end
