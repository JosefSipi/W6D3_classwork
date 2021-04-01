class ArtworkShare < ApplicationRecord

    validates :artwork_id, presence: true
    validates :viewer_id, presence: true


    belongs_to :artwork,
        primary_key: :id,
        foreign_key: :artwork_id,
        class_name: :Artwork

    belongs_to :viewer,
        primary_key: :id,
        foreign_key: :viewer_id,
        class_name: :User

    has_many :shared_viewers,
        through: :artwork,
        source: :artist

end 