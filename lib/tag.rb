class Tag

	include DataMapper::Resource

<<<<<<< HEAD
	has n, :links, :through => Resource

	property :id, Serial
	property :text, String

end
=======
  has n, :links, :through => Resource

  property :id, Serial
  property :text, String

end
>>>>>>> ff11488682bc092fdf8eef2657bca1bbea966fc0
