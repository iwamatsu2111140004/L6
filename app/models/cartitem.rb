class Cartitem < ApplicationRecord
    #belongs_to :product
    #belongs_to :cart
    validates :qty, presence: true
end
