class Ability
    include CanCan::Ability
  
    def initialize(user)
      user ||= User.new
  
      if user.role == 'admin'
        can :manage, :all
      elsif user.role == 'category_admin'
        can :read, ActiveAdmin::Page, name: "Dashboard"
        can :manage, Category
      elsif user.role == 'book_admin'
        can :read, ActiveAdmin::Page, name: "Dashboard"
        can :manage, Book
      else
        can :read, :all
      end

    end
  end