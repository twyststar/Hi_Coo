class Hicoo < ApplicationRecord
  belongs_to :profile

  validate :verify_line_one
  validate :verify_line_two
  validate :verify_line_three

  def verify_line_one
    count = line_one.to_phrase.syllables
    if count != 5
      errors.add(:syllable_count, "wrong number of syllables")
    end
  end

  def verify_line_two
    count = line_two.to_phrase.syllables
    if count != 7
      errors.add(:syllable_count, "wrong number of syllables")
    end
  end
  
  def verify_line_three
    count = line_three.to_phrase.syllables
    if count != 5
      errors.add(:syllable_count, "wrong number of syllables")
    end
  end

end
