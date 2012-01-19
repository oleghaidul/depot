require 'spec_helper'

describe LineItem do

  context "associations" do
    it { should belong_to(:order) }
    it { should belong_to(:cart) }
    it { should belong_to(:product) }
  end

end
