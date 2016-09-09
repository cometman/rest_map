class AddTagsToPlots < ActiveRecord::Migration
  def change
    add_column :plots, :tags, :string, array: true, default: []
  end
end
