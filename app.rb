require('sinatra')
require('sinatra/reloader')
require('./lib/word_count')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/test_word') do
  @sentence = params.fetch('sentence')
  @word = params.fetch('word')
  @sum = params.fetch('sentence').count(params.fetch('word'))
  erb(:word_count_result)
end
