require 'rails_helper'



RSpec.feature 'Display my name and page header' do
  scenario "Show 'Pat Needham' in an h1 tag" do

    visit '/about'

    expect(page).to have_content 'Pat Needham'
    expect(page).to have_selector 'h1', 1
    expect(page).to have_selector 'h3', 3
    expect(page).to have_selector 'p', 3
  end

  scenario "Show my link titles" do

    visit '/about'

    expect(page).to have_content 'about me'
    expect(page).to have_selector 'h2', 1
  end

  scenario "Have links redirect to the correct paths" do

    visit '/about'

    click_link('back')
    expect(current_path).to eq root_path
  end



end
