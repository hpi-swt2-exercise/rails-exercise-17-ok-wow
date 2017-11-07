require 'rails_helper'

describe 'When i visit new paper page' do

  it 'should render without error' do

    visit new_author_paper_path(1)

  end
end