# frozen_string_literal: true

require "rails_helper"

RSpec.describe "Use authentication", type: :request do
  include ActionController::RespondWith

  let(:new_user_params) do
    {email:    "email@gmail.com",
     password: "password",
     name:     "Vitor",
     nickname: "Pontes"}
  end

  let(:current_user) { User.create(email: "email@gmail.com", name: "Vitor", nickname: "Pontes", password: "password") }
  let(:current_user_params) do
    {email:    current_user.email,
     password: "password"}
  end

  let(:user_headers) { {"CONTENT_TYPE" => "application/json", "ACCEPT" => "application/json"} }

  it "creates user" do
    post user_registration_path, params: new_user_params
    expect(response).to have_http_status(200)
  end

  it "logs in" do
    login
    expect(response).to have_http_status(200)
  end

  def login
    post user_session_path, params: current_user_params.to_json, headers: user_headers
  end
end
