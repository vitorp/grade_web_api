# frozen_string_literal: true

class UsersController < ApplicationController
  before_action :authenticate_user!

  def members_only
    render json: {
      data: {
        message: "Welcom #{current_user.name}",
        user:    {name: current_user.name, nickname: current_user.nickname, email: current_user.email}
      }
    }, status: :ok
  end
end
