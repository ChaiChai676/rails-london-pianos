class CreatePianos < ActiveRecord::Migration[5.2]
  def change
    create_table :pianos do |t|
      t.string :address

      t.timestamps
    end
  end
end
