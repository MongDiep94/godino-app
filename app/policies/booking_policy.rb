class BookingPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      user.admin? ? scope.all : scope.where(user: user)
    end
  end

  def show?
    record.user == user
  end

  def create?
    true
  end

  def update?
    record.user == user
  end
end
