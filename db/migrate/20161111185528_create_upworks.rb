class CreateUpworks < ActiveRecord::Migration[5.0]
  def change
    create_table :upworks do |t|
      t.string :name
      t.references :country, foreign_key: true
      t.references :skill, foreign_key: true
      t.float :rate
      t.integer :hours
      t.integer :jobs
      t.boolean :top

      t.timestamps
    end
  end
end
