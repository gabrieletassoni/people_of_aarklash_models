module RailsAdmin::Unit
  extend ActiveSupport::Concern

  included do
    rails_admin do
      navigation_label I18n.t('admin.registries.label')
      navigation_icon 'fa fa-file'
      
      parent Affiliation
    end
  end
end