class EmotionTag < ApplicationRecord
    has_many :post_emotion_tags, dependent: :destroy
    has_many :posts, through: :post_emotion_tags

    validates :name, presence: true, uniqueness: true
end
