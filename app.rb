require 'bundler'

Bundler.require

require_relative 'config/datamapper'
require_relative 'config/rack_coffee'
require_relative 'config/sass'

require_relative 'models/morel'

get '/' do
  @sentences = Morel.all
  @sentences.shuffle!

  words = []

  @sentences.each do |sentence|
    words.push(sentence)
  end

  @words = words.shuffle

  haml :index
end

not_found do
  haml :'404'
end

