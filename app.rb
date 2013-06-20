require 'bundler'

Bundler.require

require_relative 'config/datamapper'
require_relative 'config/rack_coffee'
require_relative 'config/sass'

require_relative 'models/morel'

get '/' do
  @sentences = Morel.all
  @sentences.shuffle!

  haml :index
end

post '/new' do
  post = Morel.new(params)

  if post.valid?
    if post.save
      redirect '/'
    end
  end
end

not_found do
  haml :'404'
end

