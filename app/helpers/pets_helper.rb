module PetsHelper

  def pet_author(pet)
    user_signed_in? && current_user.id == pet.user_id
  end

end
