FactoryBot.define do
  factory :message do
    content { 'Hello there!' }
    user
  end
end
