class CreateCarsDriversJoinTable < ActiveRecord::Migration[6.0]
  def change
    create_table :cars_drivers do |t|
      t.timestamps
    end

    add_reference :cars_drivers, :car, foreign_key: true
    add_reference :cars_drivers, :driver, foreign_key: true
  end
end
