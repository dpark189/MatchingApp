require 'rails_helper'

RSpec.describe Matchitem, type: :model do
  it { should have_valid(:name).when('item1', 'item2') }
  it { should_not have_valid(:name).when(nil, '') }
  it { should validate_uniqueness_of(:name) }

end
