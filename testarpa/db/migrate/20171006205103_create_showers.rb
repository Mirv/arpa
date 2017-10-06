class CreateShowers < ActiveRecord::Migration[5.1]
  def change
    create_table :showers do |t|
      t.string :welcomer

      t.timestamps
    end
  end
end
