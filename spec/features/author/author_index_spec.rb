require 'rails_helper'

describe 'When i visit authors index page' do

  it 'should render without error' do

    visit "/authors"
  end
end