require 'spec_helper'

describe Comment do
  context "associations" do
    it { should belong_to(:product) }
  end
end
