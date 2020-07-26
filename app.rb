  erb :index
end

post '/' do
  text_from_user = params[:user_text]
post '/results' do
  @analyzed_text = TextAnalyzer.new(params[:user_text])
  erb :results
end


end 
end
