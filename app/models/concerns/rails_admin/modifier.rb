module RailsAdmin::Modifier
  extend ActiveSupport::Concern

  included do
    rails_admin do
      navigation_label I18n.t('admin.registries.label')
      navigation_icon 'fa fa-file'

      list do
        field :name
        field :modifierable
        field :category
        field :cost
        field :character_cost
        field :special_cost
        field :modifiers
      end
    end
  end
end