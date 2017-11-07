require 'rails_helper'

describe "author model", type: :model do

  it "should be created" do
    #author = Author.new(['Alan','Turing','http://wikipedia.org/Alan_Turing']);
    @author = FactoryGirl.create :author
    expect(@author.first_name).to eq('Alan');
    expect(@author.name).to eq('Alan Turing');
  end

  it "should not be created without last name" do
    expect(Author.create({:first_name => 'Alan', :last_name => '',
                          :homepage => 'http://wikipedia.org/Alan_Turing'}).valid?).to eq(false);

  end
end