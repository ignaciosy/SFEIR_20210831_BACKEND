class Video < ApplicationRecord
    belongs_to :category
    validates :title, presence: true

    has_one_attached :clip

    validates :clip, presence: true, blob: { content_type: ['video/mp4', 'video/mov'], size_range: 1..200.megabytes }
end
