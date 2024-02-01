# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new

    if user.admin?
      can :manage, :all # Los administradores pueden hacer todo
    else
      can :read, :all   # Los usuarios normales solo pueden leer
    end
  end
end
