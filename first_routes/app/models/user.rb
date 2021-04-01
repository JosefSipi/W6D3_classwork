class User < ApplicationRecord

    validates :username, presence: true


    has_many :works_of_art,
        primary_key: :id,
        foreign_key: :artist_id,
        class_name: :Artwork 

    has_many :artworks_shared,
        primary_key: :id,
        foreign_key: :viewer_id,
        class_name: :ArtworkShare

    has_many :shared_artworks,
        through: :artworks_shared,
        source: :artwork 
end