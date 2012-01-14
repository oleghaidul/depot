require 'spec_helper'

describe "LinksRequests" do
  describe "GET /links_requests" do

    it "Testing homepage links" do
    	visit "/"
    	response.should have_selector('div>strong', :content => "Test 1")
    	response.should have_selector('div', :content => "24 Shishkin St., Minsk")
    	response.should have_selector('div', :content => "+375292588526")
      response.should have_selector('a', :href => "tes2ting_routes")
      response.should have_selector('a>img', :alt => "Test 1")
    end
  end
end