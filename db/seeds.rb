artist = Artist.create(name: 'Dave', bio: 'Im cool')
genre = Genre.create(name: 'Rock')
song = Song.create(name: "SONG")
song.artist = artist
song.genre = genre

