require 'rails_helper'

describe "paper model", type: :model do

  it "should be created" do
    @paper = FactoryGirl.create :paper
    expect(@paper.title).to eq("COMPUTING MACHINERY AND INTELLIGENCE");
    expect(@paper.authors).to eq([]);
    #expect(@author.name).to eq('Alan Turing');
  end

  it "should not be created without title" do
    @author = FactoryGirl.create :author
    expect(Paper.create({:title => '', :venue => "Mind 49: 433-460", :year => 1950,
                         :authors => []}).valid?).to eq(false);

  end

  it "should not be created without venue" do
    @author = FactoryGirl.create :author
    expect(Paper.create({:title => "COMPUTING MACHINERY AND INTELLIGENCE", :venue => '', :year => 1950,
                         :authors => []}).valid?).to eq(false);

  end
  it "should not be created without year" do
    @author = FactoryGirl.create :author
    expect(Paper.create({:title => "COMPUTING MACHINERY AND INTELLIGENCE", :venue => "Mind 49: 433-460", :year => nil,
                         :authors => []}).valid?).to eq(false);

  end
  it "should not be created with wrong format year" do
    @author = FactoryGirl.create :author
    expect(Paper.create({:title => "COMPUTING MACHINERY AND INTELLIGENCE", :venue => "Mind 49: 433-460", :year => 'nineteen-fifty',
                         :authors => []}).valid?).to eq(false);

  end
end