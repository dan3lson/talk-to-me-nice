# frozen_string_literal: true

FactoryBot.define do
  factory :user do
    sequence(:username) { |i| "foo#{i}" }
    password { 'password' }
  end
end
