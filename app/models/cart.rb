class Cart < ApplicationRecord
  has_many :line_items, dependent: :destroy

  def add_pet(pet)
    current_item = line_items.find_by(pet_id: pet.id)

    if current_item
    else
      current_item = line_items.build(pet_id: pet.id)
    end
    current_item
  end

end
