# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :pothole do
    location  '10 Main st.'
    status 'reported'
    postal_code '98210'
    reporter_id 1
    official_id 100
    active true
  end
end
