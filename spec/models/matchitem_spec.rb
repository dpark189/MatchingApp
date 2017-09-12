require 'rails_helper'

RSpec.describe Matchitem, type: :model do
  it { should have_valid(:matchitem).when('item1', 'item2') }
  it { should_not have_valid(:matchitem).when(nil, '') }
  it { should validate_uniqueness_of(:matchitem) }

end
