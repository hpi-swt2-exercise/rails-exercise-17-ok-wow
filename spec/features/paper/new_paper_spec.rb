require 'rails_helper'

describe 'When i visit new paper page' do

  it 'should render without error' do

    visit new_paper_path
    expect(page).to have_field('Title')
    expect(page).to have_field('Venue')
    expect(page).to have_field('Year')
    expect(page).to have_css('input[type="submit"]')

  end

  it 'should save a new paper' do
    visit new_paper_path
    fill_in 'Title', :with => "COMPUTING MACHINERY AND INTELLIGENCE"
    fill_in 'Venue', :with => "Mind 49: 433-460"
    fill_in 'Year', :with => '1950'
    click_button 'Save Paper'

    Paper.where(:title => "COMPUTING MACHINERY AND INTELLIGENCE")
  end

  it "should display error when title is not entered" do
    visit new_paper_path
    fill_in 'Venue', :with => "Mind 49: 433-460"
    fill_in 'Year', :with => '1234'
    click_button 'Save Paper'

    expect(page).to have_text("Title can't be blank")

  end
end