class CreateAnalyses < ActiveRecord::Migration[5.1]
  def change
    create_table :analyses do |t|
      t.string :text
      t.integer :analysis_id

      t.timestamps
    end
  end
end
