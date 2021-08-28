class Video < ApplicationRecord
    belongs_to :category
    validates :title, presence: true

    has_one_attached :clip
end
