require 'rails_helper'

describe Profile do
  it { should belong_to :profile}
  it { should have_many :hicoos}
end
