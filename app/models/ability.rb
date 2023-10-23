class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new # Гость (неавторизованный пользователь)

    if user.owner?
      # Разрешения для владельца
      # can :manage, Restaurant, user_id: user.id # владелец может управлять ресторанами, которые ему принадлежат
      can :read, :all
    else
      can :read, :all # Все остальные могут только читать ресурсы
    end
  end
end
