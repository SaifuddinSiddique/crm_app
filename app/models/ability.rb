class Ability
    include CanCan::Ability
  
    def initialize(user)
      user ||= User.new
      if user.admin?
        can :manage, :all
      elsif user.standard?
        can :read, [Contact, Account, Opportunity, Report]
        can :create, [Contact, Opportunity]
        can :update, Contact
      elsif user.guest?
        can :read, Contact
      end
    end
end
  