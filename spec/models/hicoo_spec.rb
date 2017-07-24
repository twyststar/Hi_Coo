require 'rails_helper'

describe Hicoo, type: :model do
  it { should belong_to :profile}
end
