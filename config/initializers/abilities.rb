module Abilities
    class PeopleOfAarklashModels
        include CanCan::Ability
        def initialize user
            if user.present?
                # Users' abilities
                if user.admin?
                    # Admins' abilities
                end
            end
        end
    end
end