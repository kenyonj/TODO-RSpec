require 'spec_helper'
require 'capybara/rails'
require 'capybara/rspec'
include Capybara::DSL

feature 'Sign in as a user' do
  scenario 'with an email address' do
    visit root_path
    fill_in 'Email address', with: 'person@example.com'
    click_button 'Sign In'
    expect(page).to have_css '.welcome', text: 'Welcome, person@example.com'
  end
end
