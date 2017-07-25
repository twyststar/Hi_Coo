require 'rails_helper'

describe Profile do
  it { should belong_to :user}
  it { validate_uniqueness_of :user_name}
  it { should have_many :hicoos}
end
