class CreatePostEmotionTags < ActiveRecord::Migration[7.1]
  def change
    create_table :post_emotion_tags do |t|
      t.references :post, null: false, foreign_key: true
      t.references :emotion_tag, null: false, foreign_key: true

      t.timestamps
    end

    add_index :post_emotion_tags, [:post_id, :emotion_tag_id], unique: true
  end
end
