class Pet < ApplicationRecord
	before_destroy :not_referenced_by_any_line_item
	belongs_to :user, optional: true
	has_many :line_items

	mount_uploader :image, ImageUploader
	serialize :image, JSON #If yo use SQLITE, add this line

	#validates :name, :type, :age, :size, :sex, :location, presence: true
	#validates :description, length: {maximum: 1000, too_long: " Somente %{count} caracteres permitidos :("}
	#validates :title, length: {maximum: 50, too_long: " Somente %{count} caracteres permitidos :("}

	ANIMAL = %w{ Cachorro Gato }
	SIZE = %w{ P M G }
	SEX = %w{ M F }
end
