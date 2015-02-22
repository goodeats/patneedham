require 'rails_helper'

RSpec.describe 'route for homepage' do
  it 'routes GET / to the home controller' do
    expect(get('/')).to route_to('home#index')
  end

end
