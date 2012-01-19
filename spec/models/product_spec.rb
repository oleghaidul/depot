require 'spec_helper'

describe Product do

  context "associations" do
    it { should have_many(:images) }
    it { should have_many(:line_items) }
    it { should have_many(:comments) }
    it { should have_many(:orders).through(:line_items) }
  end

  context "validations" do
    it { Factory(:product); should validate_uniqueness_of(:title) }
    it { should validate_presence_of(:description) }
    it { should validate_presence_of(:title) }
    it { should ensure_length_of(:title).is_at_least(10) }
    it { should allow_value(0.01).for(:price) }
    it { should_not allow_value(0.0).for(:price) }
  end

end
