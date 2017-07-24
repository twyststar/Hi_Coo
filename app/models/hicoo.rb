class Hicoo < ApplicationRecord
  belongs_to :profile

  def author_avatar
    @profile = Profile.find(self.profile_id)
    return @profile.avatar
  end
end
