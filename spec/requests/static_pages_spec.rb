require 'spec_helper'

RSpec.configure do |c|
  c.include Capybara::DSL, :example_group => {
    :file_path => "spec/requests"
  }
end

describe "Static pages" do
  describe "Home page" do
    it "should have the content 'Sample App'" do
      visit '/static_pages/home'
      page.should have_content('Sample App')
    end
  end
end
