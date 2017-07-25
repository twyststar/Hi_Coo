class Hicoo < ApplicationRecord
  belongs_to :profile

  validates :line_one, presence: true
  validates :line_two, presence: true
  validates :line_three, presence: true

  validate :verify_line_one
  validate :verify_line_two
  validate :verify_line_three

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
