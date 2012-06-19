class AbilityDecorator
  include CanCan::Ability

  def initialize(user)
    can :create, Review do |review|
      user.has_role?(:user) || !Spree::Config[:require_login]
    end
    can :read, Review
    can :create, FeedbackReview do |review|
      user.has_role?(:user) || !Spree::Config[:require_login]
    end
  end
  Ability.register_ability(AbilityDecorator)
end