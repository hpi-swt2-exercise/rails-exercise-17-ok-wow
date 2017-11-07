require 'rails_helper'

describe 'When i visit authors index page' do

  it 'should list name and homepage of all authors' do
    @author = FactoryGirl.create :author
    visit "/authors"
    expect(page).to have_text('Alan Turing')
    expect(page).to have_text("http://wikipedia.org/Alan_Turing")
    expect(page).to have_css("th", :text => "Name")
    expect(page).to have_css("th", :text => "Homepage")
    expect(page).to have_link("Add author", :href => new_author_path)
    expect(page).to have_link("Show", :href => "/authors/#{@author.id}")
    expect(page).to have_link("Edit", :href => "/authors/#{@author.id}/edit")
  end
end