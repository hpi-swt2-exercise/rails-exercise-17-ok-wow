require 'rails_helper'

describe 'When i visit the papers index page' do

  it 'should should render' do
    @paper = FactoryGirl.create :paper
    visit papers_path
    expect(page).to have_link("Destroy", :href => paper_path(@paper))
    click_link("Destroy")
  end

  it 'should filter papers by year' do
    @paper1950 = FactoryGirl.create :paper
    @paper1968 = Paper.create({:title => 'wow', :venue => "wow", :year => 1968,
                               :authors => []});
    visit '/papers?year=1950'
    expect(page).to have_text('1950')
    expect(page).to have_no_content('1968')
  end
end