class ModifierRelationship < ApplicationRecord
  include Api::ModifierRelationship
  include RailsAdmin::ModifierRelationship
  
  belongs_to :modifier
  belongs_to :related_modifier, class_name: 'Modifier'
end
