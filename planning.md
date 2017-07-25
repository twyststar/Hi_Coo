## Schema

- [x] Users - devise

        * Add admin boolean

- [x] Profile - belongs to User

        * Username
        * Avatar - paperclip
        * Hi-Quote

- [x] Haikus - belongs to Profile

        * title
        * line_one
        * line_two
        * line_three
        * author

- [ ] Comments - belongs to Haikus, belongs to Profile - polymorphic?

        * body
        * author

- [ ] Categories/tags - belong to haiku

## Validations

- [x]  _Haiku must validate at 5-7-5_
  * This is validating that lines one and three are 4-6, and line two is 6-8, due to missing/extra syllables in the api results.

- [ ]  _Comments/discussion on haiku can be plain language, validate for length_

## Authentication

- [x]  Devise for user auth, rails_admin for admin

## Appearance


## Stretch

  * Likes as join between users and hi-coos?
  * Seeds for beginning haiku
  * Animations
  * Photos to certain categories?


## Ongoing To-DO

- [x] add title field to hi coo

- [x] fix hi-quote into 3 columns

- [x] change form, display, permissions for hi quote

- [x] config for secure key storage

- [x] edit hi coo display to contain content properly

- [ ] add time created/updated to display

- [ ] add validation for presence on hi coo lines

- [x] make call for syllable count

- [ ] make call for syllable count a helper?

- [x] write validations per line

- [ ] add comments db

- [ ] add comments interactions with hi coo




## Current notes:

* Words api endpoint:

https://wordsapiv1.p.mashape.com/words/{word}/syllables

* Example call:
https://wordsapiv1.p.mashape.com/words/incredible/syllables,
  headers:{
    "X-Mashape-Key" => "KEYHERE",
    "Accept" => "application/json"
  }

<!-- Api call for syllable count example. Refactored to use ruby_rhymes gem instead, but keeping a note of it here in case it is useful later.
  # count = 0
  # all_words = line_two.split(' ')
  # all_words.each do |word|
  #   to_add = (JSON.parse(RestClient.get("https://wordsapiv1.p.mashape.com/words/#{word}/syllables", headers={
  #     "X-Mashape-Key" => ENV["X-Mashape-Key"],
  #     "Accept" => "application/json"
  #     }))['syllables']['count']).to_i
  #     puts word
  #     puts to_add
  #     if to_add == 0
  #       count += 1
  #     end
  #     count += to_add
  # end
  # if (count < 6) || (count > 8) -->
