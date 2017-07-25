require 'rails_helper'

describe Comment, type: :model do
  it { should belong_to :hicoo}
  it { validate_length_of :content}
end
