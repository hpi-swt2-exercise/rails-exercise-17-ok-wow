require 'rails_helper'

describe 'When i visit authors index page' do

  it 'should list name and homepage of all authors' do
    @author = FactoryGirl.create :author
    visit "/authors"
    expect(page).to have_text('Alan Turing')
    expect(page).to have_text("http://wikipedia.org/Alan_Turing")
  end
end