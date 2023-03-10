class GamePolicy < ApplicationPolicy
  class Scope < Scope
  end

  def new?
    create?
  end

  def create?
    true
  end

  def show?
    true
  end
end
