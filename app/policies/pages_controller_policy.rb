class PagesControllerPolicy < ApplicationPolicy
  def initialize(user, record)
    @user = user
    @record = record
  end

  def admindash?
    user.has_role?(:admin)
  end
end
