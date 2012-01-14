# Read about factories at http://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :product do
    title "MyString"
    description "MyText"
    image_url "MyString"
    price "9.99"
  end
end
