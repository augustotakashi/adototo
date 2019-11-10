json.extract! pet, :id, :name, :age, :breed, :type, :size, :sex, :location, :owner, :description, :created_at, :updated_at
json.url pet_url(pet, format: :json)
