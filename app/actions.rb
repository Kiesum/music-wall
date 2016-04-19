enable :sessions
# helpers do 
#   def current_user
#     # TODO: implement this: take the session id and return the instance of the user
#   end
# end

# Homepage (Root path)
get '/' do
  erb :index
end

get '/songs' do
  @songs = Song.all
  erb :'songs/index'
end

get '/songs/new' do 
  @song = Song.new
  erb :'songs/new'
end

get '/songs/:id' do 
  @song = Song.find params[:id]
  erb :'songs/show'
end

post '/songs' do
if session.key?(:user_id)
  @song = Song.new(
    song_title: params[:song_title],
    author: params[:author],
    url: params[:url]
    )
    if @song.save
      redirect '/songs'
    else
      erb :'songs/new'
    end
  else
    erb :'users/login'
  end
end

get '/users/register' do 
  @user = User.new
  erb :'users/register'
end

get '/users/login' do 
  erb :'users/login'
end

post '/users/register' do 
  @user = User.new(
    username: params[:username],
    password: params[:password]
    )
    if @user.save
      session[:user_id] = @user.id
      redirect '/songs'
    else
      erb :'/users/register'
    end
end

post '/users/login' do 
  # TODO
  @user = User.new
  if User.find_by username: params[:username]
    user = User.find_by username: params[:username]
    if user.password == params[:password]   
      session[:user_id] = user.id
      redirect :'/songs/new'
    else
      redirect :'/users/login'
    end
  else 
    redirect :'/users/login'
  end
end

get '/logout' do 
  session[:user_id] = nil
  redirect :'/'
end



