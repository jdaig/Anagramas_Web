get '/' do
  erb :index
end

get '/:new_word' do
	@new_word = params[:new_word]
  @words = Word.list_canonica(@new_word.downcase)
  erb :word
end

post '/new_word' do
  redirect to ("/#{params[:user_input]}")
end