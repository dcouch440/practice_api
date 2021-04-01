require 'rails_helper'

describe Toy do
  describe 'validation' do
    %i[melee ranged].each { |property| it { should validate_presence_of property } }
  end
  it { should belong_to(:dog) }
end
