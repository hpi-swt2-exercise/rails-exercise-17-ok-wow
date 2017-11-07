require 'rails_helper'

describe 'When i visit the papers index page' do

  it 'should should render' do
    @paper = FactoryGirl.create :paper
    visit papers_path
    expect(page).to have_link("Destroy", :href => paper_path(@paper))
    click_link("Destroy")
  end
end