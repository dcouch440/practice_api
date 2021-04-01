require 'rails_helper'

describe Dog do
  describe 'validation' do
    %i[name breed size].each { |property| it { should validate_presence_of property } }
    it { should have_many :toys}
  end
end
