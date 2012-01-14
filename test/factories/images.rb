# Read about factories at http://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :image do
  	name "Test Image name"
  	image_name Rails.root.join("app/assets/images/rails.png")
  end
end
