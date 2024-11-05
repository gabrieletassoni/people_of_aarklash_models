class Category < ApplicationRecord
  include Api::Category
  include RailsAdmin::Category

  has_many :modifiers, dependent: :destroy, inverse_of: :category
end
