require 'rails_helper'

describe 'When a user visits the edit author page' do

  it 'should render without error' do
    @author = FactoryGirl.create :author
    visit "authors/#{@author.id}/edit"
    fill_in 'author_first_name', :with => 'Alan Mathison'
    click_button 'Save Author'
  end
end