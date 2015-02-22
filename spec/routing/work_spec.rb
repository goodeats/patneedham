require 'rails_helper'

RSpec.describe 'routes for work' do
  it 'routes GET /work to the work controller' do
    expect(get('/work')).to route_to('work#index')
  end

end
