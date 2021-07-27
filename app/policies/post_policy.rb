class PostPolicy < ApplicationPolicy
  def index?
    user&.role&.read_posts?
  end

  def show?
    user&.role&.read_posts?
  end

  def create?
    user&.role&.create_posts?
  end

  def update?
    user&.role&.update_posts?
  end

  def destroy?
    user&.role&.delete_posts?
  end
end
