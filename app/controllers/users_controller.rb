class UsersController < ApplicationController
  def welcome
    render(react_component: 'users/Welcome')
  end
end
