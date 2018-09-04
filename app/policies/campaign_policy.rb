class CampaignPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def create?
    true
  end

  def update?
    true
    # user_is_owner?
  end

  def destroy?
    true
    # user_is_owner?
  end

  private

  def user_is_owner?
    record.user == user
  end
end
