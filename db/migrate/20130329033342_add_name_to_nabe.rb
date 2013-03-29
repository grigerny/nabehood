class AddNameToNabe < ActiveRecord::Migration
  def change
    add_column :nabes, :name, :string
  end
end
