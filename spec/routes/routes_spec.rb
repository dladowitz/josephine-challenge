require 'rails_helper'

RSpec.describe 'Routes', type: :controller do
  describe 'pages' do
    it { should route(:get, '/').to('meals#index') }
  end

  describe 'login' do
    it { should route(:get, '/login').to('sessions#index') }
    it { should route(:post, '/login').to('sessions#create') }
    it { should route(:get, '/logout').to('sessions#destroy') }
  end
end
