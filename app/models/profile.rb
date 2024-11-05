class Profile < ApplicationRecord
  include Api::Profile
  include RailsAdmin::Profile

  belongs_to :unit, inverse_of: :profiles
  belongs_to :affiliation, inverse_of: :profiles

  has_many :entity_modifiers, as: :entity, class_name: 'EntityModifier', dependent: :destroy
  has_many :modifiers, through: :entity_modifiers
  
  accepts_nested_attributes_for :modifiers, allow_destroy: true
end
