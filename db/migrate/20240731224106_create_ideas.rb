class CreateIdeas < ActiveRecord::Migration[7.1]
  def change
    create_table :ideas do |t|
      t.references :id_users, null: false, foreign_key: true
      t.text :description
      t.string :audio

      t.timestamps
    end
  end
end
