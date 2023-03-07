# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Cleaning database..."
User.destroy_all

puts "start"
puts "start creating users & games"

puts "start creating users"

user1 = User.create!(nickname: "Julie", email: "delaruejuulie@gmail.com", password: "123456", avatar: "https://img.freepik.com/free-photo/young-pretty-young-woman-thinks-ideas-concentrated-stands-thoughtful-keeps-hand-face-stands-thoughtful-pose-wears-round-glasses-yellow-sweater_273609-45345.jpg?w=2000&t=st=1678198387~exp=1678198987~hmac=bbbafd295ab8530be809df5e53e2d92d68df38962a682eb6d4670eff69608d44")
user2 = User.create!(nickname: "Laure", email: "laurematoussowsky@gmail.com", password: "123456", avatar: "https://img.freepik.com/free-photo/portrait-happy-young-female-model-keeps-hands-cheeks-smiles-broadly-shows-white-teeth-feels-glad-expresses-sincere-emotions-wears-green-turtleneck-isolated-purple-studio-background_273609-58593.jpg?w=2000&t=st=1678199038~exp=1678199638~hmac=693764f9835cf178ddbd7fd56f47c7687648d0ce86848be8af04977266995078")
user3 = User.create!(nickname: "Shanti", email: "shanti.ravdjee@gmail.com", password: "123456", avatar: "https://img.freepik.com/free-photo/waist-up-shot-relaxed-happy-young-woman-makes-zen-gesture-meditates-indoor-breathes-deeply-practices-yoga-feel-relaxed-wears-spectacles-casual-jumper-isolated-pink-background_273609-58084.jpg?w=2000&t=st=1678198590~exp=1678199190~hmac=5be6918d3f8d9d2f55a59a272846e2bbaa041708e1b2a4c0c5cd794c4601cd85")
user4 = User.create!(nickname: "Jordan", email: "akonojo.eb@gmail.com", password: "123456", avatar: "https://img.freepik.com/free-photo/waist-up-shot-handsome-self-confident-cheerful-male-entrepreneur-has-broad-smile_273609-18909.jpg?w=2000&t=st=1678198503~exp=1678199103~hmac=aaf67e43c5788d2d42f60f9abcb70044238f979cd9410f5cef9955926c8dd68e")
user6 = User.create!(nickname: "Yann", email: "yann.delcroix@gmail.com", password: "123456", avatar: "https://img.freepik.com/free-photo/waist-up-portrait-handsome-serious-unshaven-male-keeps-hands-together-dressed-dark-blue-shirt-has-talk-with-interlocutor-stands-against-white-wall-self-confident-man-freelancer_273609-16320.jpg?w=2000&t=st=1678198367~exp=1678198967~hmac=98b591c1f529d28f6b856138b5b6484dac66dd829476a6b0902eedefb4af24b4")
user7 = User.create!(nickname: "Nicolas", email: "shanti@gmail.com", password: "123456", avatar: "https://img.freepik.com/free-photo/portrait-handsome-bearded-european-man-with-grey-hair-beard-smiles-pleasantly-looks-directly-front-being-good-mood-has-lucky-day-wears-spectacles-sweater-isolated-blue-wall_273609-44285.jpg?w=2000&t=st=1678198375~exp=1678198975~hmac=92cd4a0e9af411e9bbed7b2904e760914361046ba4901d0b1d5a55d0a70482c0")
user8 = User.create!(nickname: "Diane", email: "diane.badass@hotmail.fr", password: "123456", avatar: "https://img.freepik.com/free-photo/tender-feminine-woman-with-blue-eyes-smiles-pleasantly-has-toothy-smile-wears-white-comfortable-sweater-looks-directly-camera-isolated-pink-background_273609-32160.jpg?w=2000&t=st=1678198685~exp=1678199285~hmac=7f0e898b0a603ec4bd77daccef5879ad8002dfc0b3ae3dea22ec59ba73049e1a")
user9 = User.create!(nickname: "Tim", email: "tim.regis@gmail.com", password: "123456", avatar: "https://img.freepik.com/free-photo/happy-man-with-long-thick-ginger-beard-has-friendly-smile_273609-16616.jpg?w=2000&t=st=1678198671~exp=1678199271~hmac=c4caba13c3c4467b703db8863b2b3e2cb0fadf1bb353e911d42c72bfa00a96ef")
user10 = User.create!(nickname: "Malo", email: "malobobrow@gmail.org", password: "123456", avatar: "https://img.freepik.com/free-photo/young-bearded-man-with-striped-shirt_273609-5677.jpg?w=2000&t=st=1678198368~exp=1678198968~hmac=0c83605c46b4c64ef022638b67d99055ad94840e8a2de8f74b638ed5499b6e75")
user12 = User.create!(nickname: "Gwenola", email: "laure@gmail.com", password: "123456", avatar: "https://img.freepik.com/free-photo/portrait-young-blonde-woman-white-t-shirt_273609-11508.jpg?w=2000&t=st=1678198370~exp=1678198970~hmac=e784b5d691c2844ab33e32cfd953c171dfb51cb9a3ff0201094095ceea113588")
user13 = User.create!(nickname: "Samuel", email: "samsam@gmail.us", password: "123456", avatar: "https://img.freepik.com/free-photo/puzzled-indecisive-man-scratches-head-has-no-idea_273609-40695.jpg?w=2000&t=st=1678198379~exp=1678198979~hmac=1f50089adf9631fbea473299b328619ab26cc5cb9664cd3c4820872a3f6ae724")
user14 = User.create!(nickname: "Murielle", email: "murielle@gmail.com", password: "123456", avatar: "https://img.freepik.com/free-photo/thoughtful-blonde-middle-aged-woman-ponders-something-keeps-hand-near-face-has-healthy-skin-minimal-makeup-makes-choice-wears-white-blouse-poses-indoor-blank-copy-space-your-promotion_273609-53384.jpg?w=2000&t=st=1678198486~exp=1678199086~hmac=d81317409f195f9972e4b273515ff76253f8a0ed4e1b514baa57972876aa337a")
user15 = User.create!(nickname: "Til", email: "til@gmail.uk", password: "123456", avatar: "https://img.freepik.com/free-photo/young-brunet-man-wearing-white-t-shirt_273609-21738.jpg?w=2000&t=st=1678198570~exp=1678199170~hmac=9c38b690d54754de119deb08b446926e240f029342b91151eb19f63cc3785bd3")


puts "finish seeds users"
puts "#{User.all.count} users created"

puts "start creating games"

game = Game.new(name: "test game")

#Find a pop playlist
playlist = RSpotify::Playlist.search('2000').first
playlist_name = playlist.name


game.spotify_playlist_id = playlist.uri
game.user = user1
game.save!

puts "#{game.name} created...."
puts "#{game.user.nickname} is the game master!"
puts "Associated playlist: #{playlist_name}"

# Find associated tracks
songs = playlist.tracks

# Iterate on each track to create a song
songs.each do |song|
  song = Song.new
  song.game = game
  # song.title =
end

users = User.all.to_a
users.pop(7)
users.delete_at(0)

users.each do |user|
  users_game = UsersGame.new
  users_game.game = game
  users_game.user = user
  users_game.save!
  puts "#{users_game.user.nickname} plays at #{game.name}"
end

puts "saved seeds game"

puts "finish seeds games"

puts "ALL DONE"
