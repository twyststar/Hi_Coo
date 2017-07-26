## Schema

- [x] Users - devise

        * Add admin boolean

- [x] Profile - belongs to User

        * Username
        * Avatar - paperclip
        * Hi-Quote_line_one
        * Hi-Quote_line_two
        * Hi-Quote_line_three

- [x] Haikus - belongs to Profile

        * title
        * line_one
        * line_two
        * line_three
        * author

- [x] Comments - belongs to Haikus, belongs to Profile - polymorphic?

        * content
        * author

- [ ] Categories/tags - belong to haiku

## Validations

- [x]  _Haiku must validate at 5-7-5_
  * This is validating that lines one and three are 4-6, and line two is 6-8, due to missing/extra syllables in the api results.

- [ ]  _Comments/discussion on haiku can be plain language, validate for length_

## Authentication

- [x]  Devise for user auth, rails_admin for admin

## Appearance/Pages

- [ ] add default for hi-quote

- [ ] embed twitter haiku feed on home page

- [ ] style home page

- [ ] style splash page

- [ ] style display boxes for hi coo throughout

- [x] change form, display, permissions for hi quote

- [ ] style profile page

- [x] edit hi coo display to contain content properly

- [ ] add time created/updated to display

- [ ] add validation for presence on hi coo lines

- [ ] add About page, History page

- [ ] add collapsing menu for About, History?

- [ ] add collapsing menu for profile actions- sessions, edit etc?

## Test

- [x] test for basic relations between tables

- [x] test for validations for presence etc.

- [ ] test for custom validations

- [ ] test accessible CRUD

- [x] integration tests for:
    * navigation
    * admin



## Ongoing To-DO

- [x] add title field to hi coo

- [x] fix hi-quote into 3 columns

- [x] change form, display, permissions for hi quote

- [x] config for secure key storage

- [x] edit hi coo display to contain content properly

- [x] add time created/updated to display

- [x] add validation for presence on hi coo lines

- [x] add validation for uniqueness on user_name

- [x] write validations per line

- [x] add hi coo count to displays

- [x] add comments to db

- [ ] add comments interactions with hi coo

- [ ] add cover photo to profile

- [ ] add photo to hicoo

- [ ] add bio photo to profile

- [ ] make main displays' hi coo clickable to show

~~make call for syllable count~~
~~make call for syllable count a helper~~
    * While successful, the api call was slow and inaccurate. Refactored to use a gem.


## Stretch

  * Likes as join between users and hi-coos?
  * Seeds for beginning haiku
  * Animations
  * Photos to certain categories?


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
