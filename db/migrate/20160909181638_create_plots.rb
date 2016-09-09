class CreatePlots < ActiveRecord::Migration
  def change
    create_table :plots do |t|
      t.float :latitude
      t.float :longitude
      t.string :namespace
      t.string :comment
      t.float :value

      t.timestamps null: false
    end
  end
end
