# Read about factories at http://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :product do
  	title "Test Product name"
  	description "Test Product description"
  	price 33.00
  end
end
