class Morel
  include DataMapper::Resource

  property :id,     Serial
  property :body,   Text

  DataMapper.finalize
  DataMapper.auto_upgrade!
end
