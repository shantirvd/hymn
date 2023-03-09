# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require "open-uri"

puts "cleaning database..."
User.destroy_all

User.destroy_all

puts "Start creating new users..."

user1 = User.create!(nickname: "Julie", email: "delaruejuulie@gmail.com", password: "123456")
file = URI.open("https://res.cloudinary.com/dwvaux61b/image/upload/ar_1:1,b_rgb:262c35,bo_1px_solid_rgb:ffffff,c_crop,g_auto,r_max,w_1000/v1678206884/waist-up-shot-relaxed-happy-young-woman-makes-zen-gesture-meditates-indoor-breathes-deeply-practices-yoga-feel-relaxed-wears-spectacles-casual-jumper-isolated-pink-background_273609-58084_wsqicu.jpg")
user1.photo.attach(io: file, filename: "julie_avatar.png", content_type: "image/png")


user2 = User.create!(nickname: "Laure", email: "laurematoussowsky@gmail.com", password: "123456")
file = URI.open("https://res.cloudinary.com/dwvaux61b/image/upload/ar_1:1,b_rgb:262c35,bo_0px_solid_rgb:ffffff,c_crop,g_auto,o_100,pg_1,r_max,w_1000,x_0/v1678206811/portrait-happy-young-female-model-keeps-hands-cheeks-smiles-broadly-shows-white-teeth-feels-glad-expresses-sincere-emotions-wears-green-turtleneck-isolated-purple-studio-background_273609-58593_tq7fc8.jpg")
user2.photo.attach(io: file, filename: "laure_avatar.png", content_type: "image/png")


user3 = User.create!(nickname: "Shanti", email: "shanti.ravdjee@gmail.com", password: "123456")
file = URI.open("https://res.cloudinary.com/dwvaux61b/image/upload/ar_1:1,b_rgb:262c35,bo_1px_solid_rgb:ff0000,c_crop,g_auto,r_max,w_1000/v1678206502/young-pretty-young-woman-thinks-ideas-concentrated-stands-thoughtful-keeps-hand-face-stands-thoughtful-pose-wears-round-glasses-yellow-sweater_273609-45345_ptsjiw.jpg")
user3.photo.attach(io: file, filename: "shanti_avatar.png", content_type: "image/png")

user4 = User.create!(nickname: "Jordan", email: "akonojo.eb@gmail.com", password: "123456")
file = URI.open("https://res.cloudinary.com/dwvaux61b/image/upload/ar_1:1,b_rgb:262c35,bo_1px_solid_rgb:ffffff,c_crop,g_auto,r_max,w_1000/v1678207565/waist-up-shot-handsome-self-confident-cheerful-male-entrepreneur-has-broad-smile_273609-18909_qu8eap.jpg")
user4.photo.attach(io: file, filename: "jordan_avatar.png", content_type: "image/png")


user5 = User.create!(nickname: "Yann", email: "yann.delcroix@gmail.com", password: "123456")
file = URI.open("https://res.cloudinary.com/dwvaux61b/image/upload/ar_1:1,b_rgb:262c35,bo_1px_solid_rgb:ffffff,c_crop,g_auto,r_max,w_1000/v1678207574/waist-up-portrait-handsome-serious-unshaven-male-keeps-hands-together-dressed-dark-blue-shirt-has-talk-with-interlocutor-stands-against-white-wall-self-confident-man-freelancer_273609-16320_gvezia.jpg")
user5.photo.attach(io: file, filename: "yann_avatar.png", content_type: "image/png")

user6 = User.create!(nickname: "Nicolas", email: "shanti@gmail.com", password: "123456")
file = URI.open("https://res.cloudinary.com/dwvaux61b/image/upload/ar_1:1,b_rgb:262c35,bo_1px_solid_rgb:ffffff,c_crop,g_auto,r_max,w_1000/v1678208240/portrait-handsome-bearded-european-man-with-grey-hair-beard-smiles-pleasantly-looks-directly-front-being-good-mood-has-lucky-day-wears-spectacles-sweater-isolated-blue-wall_273609-44285_cgncfp.jpg")
user6.photo.attach(io: file, filename: "nicolas_avatar.png", content_type: "image/png")

user7 = User.create!(nickname: "Diane", email: "diane.badass@hotmail.fr", password: "123456")
file = URI.open("https://res.cloudinary.com/dwvaux61b/image/upload/ar_1:1,b_rgb:262c35,bo_1px_solid_rgb:ffffff,c_crop,g_auto,r_max,w_1000/v1678208255/tender-feminine-woman-with-blue-eyes-smiles-pleasantly-has-toothy-smile-wears-white-comfortable-sweater-looks-directly-camera-isolated-pink-background_273609-32160_krbxee.jpg")
user7.photo.attach(io: file, filename: "diane_avatar.png", content_type: "image/png")


user8 = User.create!(nickname: "Jean", email: "tim.regis@gmail.com", password: "123456")
file = URI.open("https://res.cloudinary.com/dwvaux61b/image/upload/ar_1:1,b_rgb:262c35,bo_1px_solid_rgb:ffffff,c_fill,g_auto,r_max,w_1000/v1678208449/young-bearded-man-with-striped-shirt_273609-5677_rdk0cr.jpg")
user8.photo.attach(io: file, filename: "jean_avatar.png", content_type: "image/png")

user9 = User.create!(nickname: "Malo", email: "malobobrow@gmail.org", password: "123456")
file = URI.open("https://res.cloudinary.com/dwvaux61b/image/upload/ar_1:1,b_rgb:262c35,bo_1px_solid_rgb:ffffff,c_fill,g_auto,r_max,w_1000/v1678208430/happy-man-with-long-thick-ginger-beard-has-friendly-smile_273609-16616_uwj3jo.jpg")
user9.photo.attach(io: file, filename: "malo_avatar.png", content_type: "image/png")


user10 = User.create!(nickname: "Gwenola", email: "laure@gmail.com", password: "123456")
file = URI.open("https://res.cloudinary.com/dwvaux61b/image/upload/ar_1:1,b_rgb:262c35,bo_1px_solid_rgb:ffffff,c_crop,g_auto,r_max,w_1000/v1678208602/portrait-young-blonde-woman-white-t-shirt_273609-11508_p8vpdz.jpg")
user10.photo.attach(io: file, filename: "gwenola_avatar.png", content_type: "image/png")

user11 = User.create!(nickname: "Samuel", email: "samsam@gmail.us", password: "123456")
file = URI.open("https://res.cloudinary.com/dwvaux61b/image/upload/ar_1:1,b_rgb:262c35,bo_1px_solid_rgb:ffffff,c_crop,g_auto,r_max,w_1000/v1678208618/puzzled-indecisive-man-scratches-head-has-no-idea_273609-40695_mdfvoq.jpg")
user11.photo.attach(io: file, filename: "samuel_avatar.png", content_type: "image/png")

user12 = User.create!(nickname: "Murielle", email: "murielle@gmail.com", password: "123456")
file = URI.open("https://res.cloudinary.com/dwvaux61b/image/upload/ar_1:1,b_rgb:262c35,bo_1px_solid_rgb:ffffff,c_crop,g_auto,r_max,w_1000/v1678208630/thoughtful-blonde-middle-aged-woman-ponders-something-keeps-hand-near-face-has-healthy-skin-minimal-makeup-makes-choice-wears-white-blouse-poses-indoor-blank-copy-space-your-promotion_273609-53384_rv44xu.jpg")
user12.photo.attach(io: file, filename: "murielle_avatar.png", content_type: "image/png")

user13 = User.create!(nickname: "Edouard", email: "til@gmail.uk", password: "123456")
file = URI.open("https://res.cloudinary.com/dwvaux61b/image/upload/ar_1:1,b_rgb:262c35,bo_1px_solid_rgb:ffffff,c_crop,g_auto,r_max,w_1000/v1678208643/young-brunet-man-wearing-white-t-shirt_273609-21738_oyyhnr.jpg")
user13.photo.attach(io: file, filename: "edouard_avatar.png", content_type: "image/png")

puts "#{User.all.count} users created"
puts "-------------------------------------------------------------------------"
puts "Start creating a game..."

game = Game.new(name: "test game")

puts "Selecting a playlist on spotify..."
playlist = RSpotify::Playlist.search('exception française').first
game.spotify_playlist_id = playlist.uri

puts "Assigning a game master..."
game.user = user1
game.save

puts "#{game.name} created"
puts "#{game.user.nickname} is the game master!"
puts "Associated playlist: #{playlist.name}"
puts "-------------------------------------------------------------------------"


puts "Start creating a participants (users_games)..."
users = User.all.to_a
# users.pop(7)
users.delete_at(0)

users.each do |user|
  users_game = UsersGame.new
  users_game.game = game
  users_game.user = user
  users_game.save!
  puts "#{users_game.user.nickname} plays at #{game.name}"
end

puts "#{UsersGame.all.count} participants created"
puts "-------------------------------------------------------------------------"

# Find associated tracks
puts "Finding songs from #{playlist.name}..."
tracks = playlist.tracks

# Iterate on each track to create a song
puts "Saving them in song table.."
tracks.each do |track|
  song = Song.new
  song.game = game
  song.title = track.name
  song.album = track.album.name
  song.artist = track.artists.first.name
  song.spotify_track_id = track.uri
  song.save!
end

puts "#{Song.all.count} songs created"
puts "-------------------------------------------------------------------------"

# Generate Fake Answers
puts "Start generating fake aswers for first song (Juliette Armanet - Qu'importe)"
5.times do
  answer = Answer.new
  users_games = UsersGame.all.to_a
  answer.users_game = users_games.sample
  answer.time = rand(2.0..5.0)
  answer.song = Song.find_by(spotify_track_id: "spotify:track:4CAJWoy2MpfDFHirq2ekwB")
  answer.save
end
puts "#{Answer.all.count} answers created"

# Generate Fake scores
5.times do
  users_games = UsersGame.all.to_a
  user_game = users_games.sample
  user_game.score = rand(0.0..50.0).truncate(2)
  user_game.save
end
puts "5 scores generated"

puts "All Done!"
