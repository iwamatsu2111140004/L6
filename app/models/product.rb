class Product < ApplicationRecord
    #has_one :cartitem
    #has_one :cartitem_cart, through: :cartitem, source: :cart
    validates :name, presence: true
    validates :price, presence: true
end
