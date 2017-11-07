class CreatePapers < ActiveRecord::Migration
  def change
    create_table :papers do |t|
      t.string :title
      t.string :venue
      t.integer :year
      t.integer :author_id

      t.timestamps null: false
    end
  end
end
