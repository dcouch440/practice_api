require 'rails_helper'

describe 'update a dog', :type => :request do
  let!(:dog) { FactoryBot.create(:dog) }
  let!(:attr) { {name: 'Eli', breed: 'doggo', size: 'huge'} }


  context 'when successful' do
    before do
      patch dog_path(dog.id), params: attr
      @parse = JSON.parse(response.body)
    end
    it "updates a dog" do
      attr.entries do |key, val|
        it { expect(@parse[key]).to eq val }
      end
    end
    it 'returns a value of 200' do
      expect(response).to have_http_status :created
    end
  end
  context 'when unsuccessful' do
    it 'return a value of 422' do
      patch dog_path(dog.id), params: {name: ""}
      expect(response).to have_http_status :unprocessable_entity
    end
  end
end