# frozen_string_literal: true

class UsersController < ApplicationController
  before_action :authenticate_user!

  def members_only
    render json: {
      data: {
        message: "Welcome #{current_user.email}",
        user:    current_user
      }
    }, status: :ok
  end
end
