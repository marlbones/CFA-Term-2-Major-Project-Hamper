class RequestPolicy < ApplicationPolicy

  def initialize(user, record)
    @user = user
    @record = record
  end

  def update?
    user.admin?
  end

  def destroy?
    @record.user == @user || user.admin?
  end

  class Scope < Scope
    def resolve
      scope
    end
  end
end
