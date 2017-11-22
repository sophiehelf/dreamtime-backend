class CreateDreams < ActiveRecord::Migration[5.1]
  def change
    create_table :dreams do |t|
      t.string :name
      t.string :content
      t.integer :dream_id

      t.timestamps
    end
  end
end
