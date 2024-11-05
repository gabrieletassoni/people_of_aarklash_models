class Modifier < ApplicationRecord
  include Api::Modifier
  include RailsAdmin::Modifier

  belongs_to :category, inverse_of: :modifiers

  has_many :entity_modifiers, class_name: 'EntityModifier', dependent: :destroy
  has_many :affiliations, through: :entity_modifiers, source: :entity, source_type: 'Affiliation'
  has_many :profiles, through: :entity_modifiers, source: :entity, source_type: 'Profile'
  has_many :units, through: :entity_modifiers, source: :entity, source_type: 'Unit'

  has_many :modifier_relationships, dependent: :destroy
  has_many :related_modifiers, through: :modifier_relationships, source: :related_modifier
  
  has_many :inverse_modifier_relationships, class_name: 'ModifierRelationship', foreign_key: 'related_modifier_id', dependent: :destroy
  has_many :inverse_related_modifiers, through: :inverse_modifier_relationships, source: :modifier

end
