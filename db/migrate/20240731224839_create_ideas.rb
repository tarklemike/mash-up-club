class CreateIdeas < ActiveRecord::Migration[7.1]
  def change
    create_table :ideas do |t|
      t.references :user, null: false, foreign_key: true
      t.text :description
      t.string :audio

      t.timestamps
    end
  end
end
