require 'spec_helper'

describe "Static pages" do

  describe "Home page" do

    it "should have the content 'TinyPost'" do
      visit '/static_pages/home'
      page.should have_content('TinyPost')
    end

    it "should have the right title text" do
    	visit '/static_pages/home'
    	page.should have_selector('title', :text => 'TinyPost | Home')
    end
  end

  describe "Help page" do

  	it "should have the content 'Help'" do
  		visit '/static_pages/help'
  		page.should have_content('Help') #
  	end

  	 it "should have the right title text" do
    	visit '/static_pages/help'
    	page.should have_selector('title', text: 'TinyPost | Help')
    end
  end

  describe "About" do

  	it "should have content 'About" do
  		visit '/static_pages/about'
  		page.should have_content('About')
  	end

  	it "should have the right title text" do
    	visit '/static_pages/about'
    	page.should have_selector('title', text: 'TinyPost | About')
    end
  end

  describe "Contact" do

  	it "should have content 'Contact'" do
  		visit '/static_pages/contact'
  		page.should have_content('Contact')
  	end

  	it "should should have the right title text" do
  		visit '/static_pages/contact'
  		page.should have_selector('title', text: 'TinyPost | Contact')
  	end
  end

end