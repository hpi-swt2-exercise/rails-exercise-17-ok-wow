require 'rails_helper'

describe "New author page", type: :feature do

  it "should render withour error" do
    visit new_author_path
  end

  it "should have text input for first name, last name, and homepage" do
    visit new_author_path

    expect(page).to have_field('First name')
    expect(page).to have_field('Last name')
    expect(page).to have_field('Homepage')
    expect(page).to have_css('input[type="submit"]')
  end

  it "should display error when last name is not entered" do
    visit new_author_path
    fill_in 'First name', :with => 'Wow'
    fill_in 'Last name', :with => ''
    fill_in 'Homepage', :with => 'Wow@wow.de'
    click_button 'Save Author'

    expect(page).to have_text("Last name can't be blank")

  end

end