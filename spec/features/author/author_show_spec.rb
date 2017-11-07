require 'rails_helper'

describe 'When a user visits the author page' do

  it 'should show his homepage' do
    @author = FactoryGirl.create :author
    visit "/authors/#{@author.id}"
    expect(page).to have_text("Homepage: http://wikipedia.org/Alan_Turing")
  end
end