class CreatePets < ActiveRecord::Migration[6.0]
  def change
    create_table :pets do |t|
      t.string :name
      t.integer :age
      t.string :type
      t.string :breed
      t.string :size
      t.string :sex
      t.string :location
      t.integer :owner
      t.text :description

      t.timestamps
    end
  end
end
