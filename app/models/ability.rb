class Ability
  include CanCan::Ability

  def initialize(user)
  user ||= User.new       
    case user.role   
      when "admin"
        can :manage, :all
      when "user"
        can :manage, Order, :user_id => user.id
      end
  end
end
