class CreatePets < ActiveRecord::Migration[6.0]
  def change
    create_table :pets do |t|
      t.string :name
      t.decimal :age, precision: 5, scale: 2, default: "0.0"
      t.string :type
      t.string :size
      t.string :sex
      t.string :location
      t.integer :owner
      t.text :description

      t.timestamps
    end
  end
end
