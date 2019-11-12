class Cart < ApplicationRecord
	has_many :line_items, dependent: :destroy
	

	def add_pet(pet)
		current_item = line.items.find_by(pet_id: pet.id)
		if current_item
			current_item.increment(:quantity)
		else
			current_item = line_items.build(instrument_id: instrument.id)
		end
		current_item
	end


end
