require "sinatra"
require "sinatra/reloader"
require "./lib/scrabble"
also_reload"lib/**/*.rb"



get('/')do
  erb(:index)
end

get('/word') do
  @word = params.fetch('word').scrabble()
  erb(:word)
end
