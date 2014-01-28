require 'active_record'

get '/:word' do
  # Look in app/views/index.erb
  "You typed in #{params[:word]}"
  word = Word.find_by_text(params[:word])
  @array = word.anagrams
  erb :index
end
