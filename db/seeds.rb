upgrade = Song.new
upgrade.name = 'upgrade'
upgrade .artist_id = 1
upgrade.genre_id = 1
upgrade.save

pop = Genre.new
pop.name = 'pop'
pop.save

beyonce = Artist.new
beyonce.name = 'beyonce'
beyonce.bio = 'beyonces bio'
beyonce.save
