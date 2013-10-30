get '/' do
  @grandma = params[:grandma]
  # Look in app/views/index.erb
  erb :index
end

post '/grandma' do
  input = params["user_input"]
  if input == ""
    redirect to ('/?grandma=SAY SOMETHING!')
  elsif input == input.upcase
    redirect to('/?grandma=I hear ya. That\'s nice')
  else
    redirect to('/?grandma=SPEAK UP!')
  end
end


# get '/?grandma=SAY SOMETHING!' do
  
# end


# get '/?grandma=I hear ya. That\'s nice' do

# end

# get '/?grandma=SPEAK UP!' do

# end
