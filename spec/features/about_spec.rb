require 'rails_helper'



RSpec.feature 'Display my name and page header' do
  scenario "Show 'Pat Needham' in an h1 tag" do

    visit '/about'

    expect(page).to have_content 'Pat Needham'
    expect(page).to have_selector 'h1', 1
  end

  scenario "Show my link titles" do

    visit '/about'

    expect(page).to have_content 'about me'
    expect(page).to have_selector 'h2', 1
  end





end
