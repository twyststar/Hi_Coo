class Hicoo < ApplicationRecord
  belongs_to :profile
  has_many :comments

  validates :line_one, presence: true
  validates :line_two, presence: true
  validates :line_three, presence: true

  validate :verify_line_one
  validate :verify_line_two
  validate :verify_line_three

  has_attached_file :pic, :styles => { :medium => "250x250>", :thumb => "100x100#" }
  
  validates_attachment_content_type :pic, :content_type => /\Aimage\/.*\Z/


  def verify_line_one
    if line_one == ""
      errors.add(:line_one, "Line one must be present")
    else
      count = line_one.to_phrase.syllables
      if count != 5
        errors.add(:syllable_count, "wrong number of syllables")
      end
    end
  end

  def verify_line_two
    if line_two == ""
      errors.add(:line_two, "Line one must be present")
    else
      count = line_two.to_phrase.syllables
      if count != 7
        errors.add(:syllable_count, "wrong number of syllables")
      end
    end
  end

  def verify_line_three
    if line_three == ""
      errors.add(:line_three, "Line one must be present")
    else
      count = line_three.to_phrase.syllables
      if count != 5
        errors.add(:syllable_count, "wrong number of syllables")
      end
    end
  end

end
