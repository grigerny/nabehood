class AddMapidToNabe < ActiveRecord::Migration
  def change
    add_column :nabes, :mapid, :string
  end
end
