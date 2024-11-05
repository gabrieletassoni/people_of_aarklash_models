class Army < ApplicationRecord
  include Api::Army
  include RailsAdmin::Army

  validates :name, presence: true, uniqueness: true

  has_many :affiliations, dependent: :destroy, inverse_of: :army
  has_many :units, dependent: :destroy, inverse_of: :army
end