class CreateEmotionTags < ActiveRecord::Migration[7.1]
  def change
    create_table :emotion_tags do |t|
      t.string :name

      t.timestamps
    end

    add_index :emotion_tags, :name, unique: true
  end
end
