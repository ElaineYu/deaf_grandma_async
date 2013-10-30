get '/' do
  @grandma = params[:grandma]
  # Look in app/views/index.erb
  erb :index
end

post '/grandma' do
  input = params["user_input"]
  if input == ""
    erb :_say_empty, :layout => false
  elsif input == input.upcase
    erb :_say_uppercase, :layout => false
  else
    erb :_say_lowercase, :layout => false
  end
end


# get '/?grandma=SAY SOMETHING!' do

# end


# get '/?grandma=I hear ya. That\'s nice' do

# end

# get '/?grandma=SPEAK UP!' do

# end
