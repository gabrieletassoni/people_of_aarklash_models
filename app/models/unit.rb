class Unit < ApplicationRecord
  include Api::Unit
  include RailsAdmin::Unit

  belongs_to :army, inverse_of: :units

  validates :name, presence: true, uniqueness: true

  has_many :entity_modifiers, as: :entity, class_name: 'EntityModifier', dependent: :destroy
  has_many :modifiers, through: :entity_modifiers

  has_many :profiles, dependent: :destroy, inverse_of: :unit

  accepts_nested_attributes_for :modifiers, allow_destroy: true
end
