require 'sinatra'
require 'sinatra/reloader'

get '/' do
  @count = params[:contador]
  #Cuando entra por primera vez a la página, el contador será un valor nulo, entonces en ese caso le asignamos 0
  if @count == nil
    @count = 0
  end
#=============================
  erb :index
end

get '/count' do
  @count = params[:c].to_i + 1
  redirect "/?contador=#{@count}"
end
