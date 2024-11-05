class EntityModifier < ApplicationRecord
  include Api::EntityModifier
  include RailsAdmin::EntityModifier
  
  belongs_to :entity, polymorphic: true
  belongs_to :modifier
end
