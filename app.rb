require_relative 'config/environment'

class App < Sinatra::Base



  configure do
  enable :sessions
  set :session_secret, "secret"
end

get "/form" do
  session["form"] = "newForm"
  @session = session
		erb :index
	end

end
