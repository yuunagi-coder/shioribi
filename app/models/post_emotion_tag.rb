class PostEmotionTag < ApplicationRecord
  belongs_to :post
  belongs_to :emotion_tag

  validates :post_id, uniqueness: { scope: :emotion_tag_id }
end
