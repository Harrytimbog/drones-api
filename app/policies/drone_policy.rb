class DronePolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def show?
    true
  end

  def update?
    # Only crony owners can update it
    # record
    # user
    record.user == user
  end

  def create?
    !user.nil?
  end

  def destroy?
    update?
  end
end
