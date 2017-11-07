require 'rails_helper'

describe 'When a user visits the edit author page' do

  it 'should render without error' do
    @author = FactoryGirl.create :author
    visit "authors/#{@author.id}/edit"
  end
end