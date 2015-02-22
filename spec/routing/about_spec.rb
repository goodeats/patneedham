require 'rails_helper'

RSpec.describe 'routes for about' do
  it 'routes GET /about to the about controller' do
    expect(get('/about')).to route_to('about#index')
  end

end
