require 'spec_helper'

describe Order do

  context "associations" do
    it { should have_many(:line_items) }
    it { should belong_to(:user) }
  end

  context "validations" do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:address) }
    it { should validate_presence_of(:email) }
    it { should validate_presence_of(:pay_type) }
    it "should allow valid values" do
      Order::PAYMENT_TYPES.each do |p|
        should allow_value(p).for(:pay_type)
      end
    end

  end
end
