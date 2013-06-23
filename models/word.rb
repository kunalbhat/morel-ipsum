class Word
  include DataMapper::Resource

  property :id,     Serial
  property :word,   String

  DataMapper.finalize
  DataMapper.auto_upgrade!
end
