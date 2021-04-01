# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

    ActiveRecord::Base.transaction do 
        ArtworkShare.delete_all
        Artwork.delete_all
        User.delete_all

        user1 = User.create(username: "Jack")
        user2 = User.create(username: "Joseph")
        user3 = User.create(username: "Bob")
        user4 = User.create(username: "Gary")
        user5 = User.create(username: "Clare")
        artwork1 = Artwork.create(title: "Paintingsss1", image_url: "wwww.paintings.com", artist_id: user1.id)
        artwork2 = Artwork.create(title: "blalal", image_url: "wwww.blalalal.com", artist_id: user2.id)
        artwork3 = Artwork.create(title: "mona lisa", image_url: "wwww.monalisa.com", artist_id: user3.id) 
        artwork4 = Artwork.create(title: "anotherpainting", image_url: "wwww.anotherpainting.com", artist_id: user4.id) 
        artwork5 = Artwork.create(title: "anothaaa", image_url: "wwww.anothaaa.com", artist_id: user5.id)
        shared1 = ArtworkShare.create(artwork_id: artwork1.id, viewer_id: user5.id)
        shared2 = ArtworkShare.create(artwork_id: artwork2.id, viewer_id: user4.id)
        shared3 = ArtworkShare.create(artwork_id: artwork3.id, viewer_id: user1.id)
        
    end 


