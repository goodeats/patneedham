require 'rails_helper'

RSpec.describe 'routes for blog' do
  it 'routes GET /blog to the blog controller' do
    expect(get('/blog')).to route_to('blog#index')
  end

end
