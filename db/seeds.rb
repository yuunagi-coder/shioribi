# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
emotion_names = %w[
  救われた
  勇気をもらった
  共感
  切ない
  優しい
  希望
  気づき
  考えさせられた
  自己肯定
  刺さった
  癒し
  不安
  迷い
  成長
  忘れられない
]

emotion_names.each do |name|
  EmotionTag.find_or_create_by!(name: name)
end