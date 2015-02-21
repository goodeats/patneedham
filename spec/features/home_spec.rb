require 'rails_helper'



RSpec.feature 'Display my name' do
  scenario "Show 'Pat Needham' in an h1 tag" do

    visit '/'

    expect(page).to have_content 'Pat Needham'
    expect(page).to have_selector 'h1', 1
  end

  scenario "Show my link titles" do

    visit '/'

    expect(page).to have_content 'about me'
    expect(page).to have_content 'my work'
    expect(page).to have_content 'blog'
    expect(page).to have_selector 'div', 3
  end

end
