class CreateLocations < ActiveRecord::Migration[4.2]
  def change
    create_table :locations, :force => true do |t|
      t.string :name

      t.timestamps
    end
  end
end
