require 'spec_helper'
require 'capybara/rails'
require 'capybara/rspec'
include Capybara::DSL

feature 'View the homepage' do
  scenario 'user sees relevant information' do
    visit root_path
    expect(page).to have_css 'title', text: 'Todos'
    expect(page).to have_css '[data-role="description"]'
  end
end
