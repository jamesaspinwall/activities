class CreateTasks < ActiveRecord::Migration[5.0]
  def change
    create_table :tasks do |t|
      t.string :context
      t.string :title
      t.text :description
      t.string :tags
      t.text :data
      t.integer :complete_ts
      t.integer :active_ts

      t.timestamps
    end
  end
end
