class UsersController < ApplicationController
  def create
    user = User.new(name: "lisa")
    render json: user.as_json
  end
end
