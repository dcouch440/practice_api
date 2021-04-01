require 'rails_helper'

describe 'Get requests Dogs' do

  let!(:dogs) { FactoryBot.create_list(:dog, 10) }

  describe 'gets all doggos', :type => :request do
    before { get dogs_path }

    it 'returns all of the doggos' do
      expect(JSON.parse(response.body).size).to eq(10)
    end

    it 'returns status code of 200' do
      expect(response).to have_http_status(:success)
    end
  end

  describe '#show', :type => :request do
    let!(:dog) { dogs.first }

    context 'when successful' do
      before do
        get dog_path(dog)
        @parse = JSON.parse(response.body)
      end
      it 'returns a dog' do
        expect(@parse['id']).to eq dog.id
      end
      it { expect(response).to have_http_status :success }
    end

    context 'when unsuccessful' do
      before { get dog_path(dogs.last.id + 1) }
      it { expect(response).to have_http_status :not_found}
    end
  end
end