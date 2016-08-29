class CreateImages < ActiveRecord::Migration[5.0]
  def change
    create_table :images do |t|
      t.string :name, null: false
      t.integer :categoy, default: 0
      t.text :description
      t.string :tags, array: true ,default: []

      t.timestamps
    end
  end
end
