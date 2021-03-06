require 'spec_helper'

describe "StaticPages" do

  subject { page }

  describe "Home page" do
    before { visit root_path }

    it { should have_selector('h1', text: 'Job App') }
    it { should have_selector('title', text: full_title('')) }
    it { should_not have_selector 'title', text: '| Home'}
  end

  describe "Help Page" do
    before { visit help_path }

  	it { should have_selector('h1', text: 'Help') }
    it { should have_selector( 'title', text: full_title('')) }
  end

  describe "About page" do
    before { visit about_path }

  	it { should have_selector('h1', text: 'About') }
    it { should have_selector('title', text: full_title('')) }
  end
end
