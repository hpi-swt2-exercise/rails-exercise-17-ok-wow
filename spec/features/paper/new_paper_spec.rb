require 'rails_helper'

describe 'When i visit new paper page' do

  it 'should render without error' do

    visit new_paper_path
    expect(page).to have_field('Title')
    expect(page).to have_field('Venue')
    expect(page).to have_field('Year')
    expect(page).to have_css('input[type="submit"]')

  end
end