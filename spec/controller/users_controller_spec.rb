require 'rails_helper'

RSpec.describe UsersController, type: :controller do
    describe 'GET #index' do
        let(:users) { described_class.new }

        before { get :index}

        context 'required output per page' do
            it 'render to index template' do
                is_expected.to render_template :index
            end
        end
    end
end
