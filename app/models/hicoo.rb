class Hicoo < ApplicationRecord
  belongs_to :profile

  validate :verify_line_one
  validate :verify_line_two
  validate :verify_line_three

  def verify_line_one
    count = 0
    all_words = line_one.split(' ')
    all_words.each do |word|
      to_add = (JSON.parse(RestClient.get("https://wordsapiv1.p.mashape.com/words/#{word}/syllables", headers={
        "X-Mashape-Key" => ENV["X-Mashape-Key"],
        "Accept" => "application/json"
        }))['syllables']['count']).to_i
        puts word
        puts to_add
        if to_add == 0
          count += 1
        end
        count += to_add
    end
    if (count < 4) || (count > 6)
      errors.add(:syllable_count, "wrong number of syllables")
    end
  end

  def verify_line_two
    count = 0
    all_words = line_two.split(' ')
    all_words.each do |word|
      to_add = (JSON.parse(RestClient.get("https://wordsapiv1.p.mashape.com/words/#{word}/syllables", headers={
        "X-Mashape-Key" => ENV["X-Mashape-Key"],
        "Accept" => "application/json"
        }))['syllables']['count']).to_i
        puts word
        puts to_add
        if to_add == 0
          count += 1
        end
        count += to_add
    end
    if (count < 6) || (count > 8)
      errors.add(:syllable_count, "wrong number of syllables")
    end
  end
  def verify_line_three
    count = 0
    all_words = line_three.split(' ')
    all_words.each do |word|
      to_add = (JSON.parse(RestClient.get("https://wordsapiv1.p.mashape.com/words/#{word}/syllables", headers={
        "X-Mashape-Key" => ENV["X-Mashape-Key"],
        "Accept" => "application/json"
        }))['syllables']['count']).to_i
        puts word
        puts to_add
        if to_add == 0
          count += 1
        end
        count += to_add
    end
    if (count < 4) || (count > 6)
      errors.add(:syllable_count, "wrong number of syllables")
    end
  end

  # def word_syllables |word|
  #   JSON.parse(RestClient.get("https://wordsapiv1.p.mashape.com/words/#{word}/syllables", headers={
  #     "X-Mashape-Key" => ENV["X-Mashape-Key"],
  #     "Accept" => "application/json"
  #     }))['syllables']['count']
  # end

end
