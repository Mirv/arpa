class CreateNoshows < ActiveRecord::Migration[5.1]
  def change
    create_table :noshows do |t|
      t.string :amessage

      t.timestamps
    end
  end
end
