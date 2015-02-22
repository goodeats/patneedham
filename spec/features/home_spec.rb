require 'rails_helper'



RSpec.feature 'Display my name' do
  scenario "Show 'Pat Needham' in an h1 tag" do

    visit '/'

    expect(page).to have_content 'Pat Needham'
    expect(page).to have_selector 'h1', 1
  end
end

RSpec.feature 'Test links' do
  scenario "Show my link titles" do

    visit '/'

    expect(page).to have_content 'about me'
    find_link('about').visible?
    expect(page).to have_content 'my work'
    find_link('work').visible?
    expect(page).to have_content 'blog'
    find_link('blog').visible?
    expect(page).to have_selector 'div > h2', 3
  end

  scenario "Have links redirect to the correct paths" do

    visit '/'

    click_link('about')
    expect(current_path).to eq about_index_path
  end

  scenario "Have links redirect to the correct paths" do

    visit '/'
    click_link('work')
    expect(current_path).to eq work_index_path
  end

  scenario "Have links redirect to the correct paths" do

    visit '/'

    click_link('blog')
    expect(current_path).to eq blog_index_path

  end

end

