require 'rails_helper'

RSpec.describe 'routes for movies' do
  it 'routes GET /movies to the movies controller' do
    expect(get('/')).to route_to('home#index')
  end

end
