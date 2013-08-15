require 'spec_helper'

describe "StaticPages" do
  
  describe "Home page" do

    it "should have the content 'Sample App'" do
      visit '/static_pages/home'
      page.should have_content('Sample App')
    end

    it "should have the right title" do
      visit '/static_pages/home'
      page.should have_selector('title', :text => "Ruby on Rails Tutorial Sample App")
    end

    it "should not have a custom page title" do
      visit '/static_pages/home'
      page.should_not have_selector('title', text: '| Home')
    end
  end
  
  describe "Help Page" do
    it "should have the content 'Help'" do
      visit '/static_pages/help'
      page.should have_content('Help')
    end
    it "should have the right title" do
      visit '/static_pages/help'
      page.should have_selector('title', :text => "| Help")
    end
  end

  describe "About Page" do
    it "should have the content 'About us'" do
      visit '/static_pages/about'
      page.should have_content 'About us'
    end
    it "should have the right title" do
      visit '/static_pages/about'
      page.should have_selector('title', :text => "| About Us")
    end
  end

  describe "Contact Page" do
    it "should have right content and title" do
      visit "/static_pages/contact"
      page.should have_selector("title", :text => 
                                "Ruby on Rails Tutorial Sample App | Contact")
      page.should have_content "Contact"
    end
  end
end
