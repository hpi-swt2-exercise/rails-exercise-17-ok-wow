require 'rails_helper'

describe 'When i visit the edit page' do

  it 'should render' do
    @paper = FactoryGirl.create :paper
    @turing = FactoryGirl.create :author
    @plagiarist = Author.create({:first_name => 'Peter', :last_name => 'Plagiarist',
                                 :homepage => 'http://wikipedia.org/Alan_Turing'})
    @paper.authors << @turing
    visit edit_paper_path(@paper)
    expect(page).to have_text('Author 1')
    select "Peter Plagiarist", :from => 'paper_author_id_2'
    click_button('Save Paper')

    @peter = @paper.authors.where(:first_name => 'Peter').first
    expect(@peter.last_name).to eq('Plagiarist')

  end
end