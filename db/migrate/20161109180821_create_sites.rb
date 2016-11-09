class CreateSites < ActiveRecord::Migration[5.0]
  def change
    create_table :sites do |t|
      t.string :content
      t.string :title
      t.text :description
      t.string :url
      t.text :data

      t.timestamps
    end
  end
end
