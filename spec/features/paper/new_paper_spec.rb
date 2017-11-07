require 'rails_helper'

describe 'When i visit new paper page' do

  it 'should render without error' do

    visit new_paper_path(:author_id => 1)

  end
end