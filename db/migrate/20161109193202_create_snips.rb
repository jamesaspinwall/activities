class CreateSnips < ActiveRecord::Migration[5.0]
  def change
    create_table :snips do |t|
      t.string :context
      t.string :title
      t.text :code
      t.string :url
      t.text :data

      t.timestamps
    end
  end
end
