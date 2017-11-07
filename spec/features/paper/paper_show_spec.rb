require 'rails_helper'

describe 'When a user visits a paper page' do

  it 'should show the authors' do

    @paper = FactoryGirl.create :paper
    @turing = FactoryGirl.create :author
    @paper.authors << @turing
    visit paper_path(@paper)
    expect(page).to have_text("Alan Turing")
  end
end