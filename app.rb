require_relative 'config/environment'

class App < Sinatra::Base

  # This is a sample static route.
  get '/hello' do
    "Hello World!"
  end

  # This is a sample dynamic route.
  get "/hello/:name" do
    @user_name = params[:name]
    "Hello #{@user_name}!"
  end

  get "/goodbye/:name" do
    @user_name = params[:name]
    "Goodbye #{@user_name}"
  end

  get "/multiply/:val_1/:val_2" do
    val_1 = params[:val_1].to_i
    val_2 = params[:val_2].to_i

    "#{val_1 * val_2}"
  end


end