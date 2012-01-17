# Read about factories at http://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :cart do |c|
  	c.line_items { |l| [l.association[:line_item]] }
  end
end
