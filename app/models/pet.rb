class Pet < ApplicationRecord
	belongs_to :user, optional: true
	mount_uploader :image, ImageUploader
	serialize :image, JSON #If yo use SQLITE, add this line

	validates :name, :type, :age, :size, :sex, :location, presence: true
	validates :description, length: {maximum: 1000, too_long: " Somente %{count} caracteres permitidos :("}
	validates :title, length: {maximum: 50, too_long: " Somente %{count} caracteres permitidos :("}

	TYPE = %w{ Cachorro Gato }
	SIZE = %w{ P M G }
	SEX = %w{ M F }
end
