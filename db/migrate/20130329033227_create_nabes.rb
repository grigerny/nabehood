class CreateNabes < ActiveRecord::Migration
  def change
    create_table :nabes do |t|

      t.timestamps
    end
  end
end
