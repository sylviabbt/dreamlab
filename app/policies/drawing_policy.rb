class DrawingPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def create?
    true
  end

  def new?
    true
  end

  def index?
    true
  end

  def show?
    true
  end

  def destroy?
    true
  end

  def download?
    true
  end
end
