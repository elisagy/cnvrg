class CreateDrivers < ActiveRecord::Migration[6.0]
  def change
    create_table :drivers do |t|
      t.string :name,     null: false
      t.string :email,    null: false
      t.date   :birthdate
      t.binary :image

      t.timestamps
    end
  end
end
