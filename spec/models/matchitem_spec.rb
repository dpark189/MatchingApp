require 'rails_helper'

RSpec.describe Matchitem, type: :model do
  it { should have_valid(:match_item).when('item1', 'item2') }
  it { should_not have_valid(:match_item).when(nil, '') }
  it { should validate_uniqueness_of(:match_item) }

end
