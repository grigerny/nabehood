class AddCityIdToNabe < ActiveRecord::Migration
  def change
    add_column :nabes, :city_id, :integer
  end
end
