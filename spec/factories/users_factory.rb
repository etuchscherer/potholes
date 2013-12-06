# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do
    email 'user@example.com'
    password 'password'
    password_confirmation 'password'
    permission_mask 1
  end

  factory :official, class: User do
    email 'official@example.com'
    password 'password'
    password_confirmation 'password'
    permission_mask 9
  end

  factory :super_user, class: User do
    email 'admin@example.com'
    password 'password'
    password_confirmation 'password'
    permission_mask 511
  end
end