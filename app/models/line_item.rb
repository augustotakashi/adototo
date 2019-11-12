class LineItem < ApplicationRecord
  belongs_to :pet
  belongs_to :cart
end
