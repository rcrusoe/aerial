class CreateVideos < ActiveRecord::Migration[5.0]
  def change
    create_table :videos do |t|
      t.string :title
      t.text :description
      t.string :url
      t.boolean :approved
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
