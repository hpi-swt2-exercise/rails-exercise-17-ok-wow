require 'rails_helper'

describe 'When i visit the edit page' do

  it 'should render' do
    @paper = FactoryGirl.create :paper
    visit edit_paper_path(@paper)
  end
end