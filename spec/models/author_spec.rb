require 'rails_helper'

describe "author model test", type: :model do

  it "should render withour error" do
    #author = Author.new(['Alan','Turing','http://wikipedia.org/Alan_Turing']);
    @author = FactoryGirl.create :author
    expect(@author.first_name).to eq('Alan');
    expect(@author.name).to eq('Alan Turing');
  end


end