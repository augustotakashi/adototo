 class Pet < ApplicationRecord
	before_destroy :not_referenced_by_any_line_item
	belongs_to :user, optional: true
	has_many :line_items
	
	mount_uploader :image, ImageUploader
	serialize :image, JSON 

	validates :name, :age, :size, :sex, :location, presence: true
	validates :description, length: {maximum: 1000, too_long: " Somente %{count} caracteres permitidos :("}

	ANIMAL = %w{ Cachorro Gato }
	SIZE = %w{ P M G }
	SEX = %w{ M F }
	BREED = %w{ Pug Maltês ShihTzu Buldog PitBull Dachshund Pastor-Alemão Basset Schnauzer Poodle Rottweiler Labrador Pinscher Golden Yorkshire Beagle Abissínio Angorá Balinês Bengal Bobtail Bombay Burmês Chartreux-Colorpoint Cornish-Rex Curl Americano Devon Rex Himalaio Jaguatirica Javanês Korat LaPerm Maine-Coon Manx Mau-Egípcio Mist-Australiano Munchkin Norueguês-da-Floresta Pelo-curto Persa Pixie-bob Ragdoll Ocicat Russo-Azul Sagrado-da-Birmânia Savannah Scottish Fold Selkirk-Rex Siamês Siberiano Singapura Somali Sphynx Thai Tonquinês Toyger Usuri Vira-lata Outro }

	private

	def not_referenced_by_any_line_item
		unless line_items.empty?
			errors.add(:base, "Line items present")
			throw :abort
		end
	end

end

