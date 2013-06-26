require 'bundler'

Bundler.require

require_relative 'config/rack_coffee'
require_relative 'config/sass'

get '/' do
  @words = ['lorem', 'ipsum', 'dolor', 'sit', 'amet', 'consectetur', 'adipiscing',
            'elit', 'nulla', 'placerat', 'metus', 'justo', 'in', 'bibendum', 'eros',
            'mollis', 'ut', 'proin', 'vel', 'enim', 'nisl', 'donec', 'et', 'orci', 'a',
            'arcu', 'rhoncus', 'ornare' ,'quis', 'ac', 'metus', 'fusce', 'blandit',
            'rutrum', 'justo', 'eu', 'sagittis', 'aenean', 'consequat', 'magna', 'nemo',
            'numquam', 'sequi', 'porro', 'adipisci', 'commodi', 'ut', 'enim', 'ad', 'nisi',
            'iste', 'reprehenderit', 'pariatur', 'fugiat', 'ratione', 'consequuntur',
            'inventore', 'error', 'ipsam', 'laboriosam', 'ullam', 'ex', 'ea', 'voluptatem',
            'exercitationem', 'assumenda', 'facere', 'quod', 'maxime', 'at', 'vero', 'es']


  paragraph = []

  (0..20).each do |x|
    sentence = @words.sample(rand(5..15))

    paragraph.push(sentence)
  end

  @paragraph = paragraph

  haml :index
end

not_found do
  haml :'404'
end

