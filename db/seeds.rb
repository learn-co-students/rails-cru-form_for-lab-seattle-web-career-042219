# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Artist.destroy_all
Genre.destroy_all
Song.destroy_all

artist1 = Artist.create(name: "Jim Tyler", bio: "Born a sailor, his love for music lead him to form an underwater band.")
artist2 = Artist.create(name: "Kurly Mix", bio: "Originally a drummer for the muppets, now a superstar.")

genre1 = Genre.create(name: "Funko Pop")
genre2 = Genre.create(name: "Hydrolica")

song1 = Song.create(name: "Blood Brothers", artist_id: artist1.id, genre_id: genre1.id)
song2 = Song.create(name: "swallow the chair", artist_id: artist2.id, genre_id: genre1.id)
song3 = Song.create(name: "Mr x-time", artist_id: artist1.id, genre_id: genre2.id)