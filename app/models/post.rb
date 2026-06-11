class Post < ApplicationRecord
    belongs_to :user
    has_many :post_emotion_tags, dependent: :destroy
    has_many :emotion_tags, through: :post_emotion_tags

    validates :content, presence: true
end
