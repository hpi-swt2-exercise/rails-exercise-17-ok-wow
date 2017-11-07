require 'rails_helper'

describe 'When i visit the edit page' do

  it 'should render' do
    @paper = FactoryGirl.create :paper
    visit edit_paper_path(@paper)
    expect(page).to have_text('Author 1')
  end
end