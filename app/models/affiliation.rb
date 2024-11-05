class Affiliation < ApplicationRecord
  include Api::Affiliation
  include RailsAdmin::Affiliation

  validates :name, presence: true, uniqueness: true

  belongs_to :army, inverse_of: :affiliations

  has_many :entity_modifiers, as: :entity, class_name: 'EntityModifier', dependent: :destroy
  has_many :modifiers, through: :entity_modifiers
  
  has_many :profiles, dependent: :destroy, inverse_of: :affiliation
end
