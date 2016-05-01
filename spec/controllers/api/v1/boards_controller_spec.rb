require 'spec_helper'

describe Api::V1::BoardsController do
  before(:each) { request.headers['Accept'] = 'application/vnd.pintube.v1' }

  describe 'GET #show' do
    before(:each) do
      @board = FactoryGirl.create(:board)
      get :show, id: @board.id, format: :json
    end

    it 'returns the information of a specific board on a hash' do
      board_response = JSON.parse(response.body, symbolize_names: true)
      expect(board_response[:name]).to eql @board.name
    end

    it { should respond_with 200 }
  end
end
