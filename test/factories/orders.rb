# Read about factories at http://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :order do
    name "MyString"
    address "MyText"
    email "MyString@string.ru"
    pay_type "Check"
  end
end
