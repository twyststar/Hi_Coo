## Schema

- [x] Users - devise

        * Add admin boolean

- [x] Profile - belongs to User

        * Username
        * Avatar - paperclip
        * Hi-Quote_line_one
        * Hi-Quote_line_two
        * Hi-Quote_line_three
        * Bio

- [x] Haikus - belongs to Profile

        * title
        * line_one
        * line_two
        * line_three
        * author
        * pic - paperclip

- [x] Comments - belongs to Haikus, belongs to Profile - polymorphic?

        * content
        * author

- [ ] Categories/tags - belong to haiku


## Validations

- [x]  _Haiku must validate at 5-7-5_

  ~~* This is validating that lines one and three are 4-6, and line two is 6-8, due to missing/extra syllables in the api results.~~ * Fixed validation issue by removing api and using ruby-rhymes gem.

- [x]  _Comments/discussion on haiku can be plain language, validate for length_

    * These validations also cover presence of, as an empty field has no syllables.

- [x] _Validate uniqueness of user_name on profiles_

## Authentication

- [x]  Devise for user auth, rails_admin for admin


## Appearance/Pages

- [ ] reorder all grouped hicoo so most recent appear at the top

- [ ] style profile page

- [ ] style display boxes for hi coo throughout

- [ ] add About page, History page

- [ ] remove hicoo index(now on home)

- [ ] remove unneeded routes

- [ ] style home page

- [x] style splash page

- [x] change form, display, permissions for hi quote

- [x] edit hi coo display to contain content properly

- [x] add time created/updated to display

- [x] add validation for presence on hi coo lines

- [x] add default for hi-quote

- [x] embed twitter haiku feed on home page

- [x] add ajax new hicoo form to home page

~~change any headlines/background and switch bg to black~~
    * that was too dark

## Test

- [x] test for basic relations between tables

- [x] test for validations for presence etc.

- [ ] test for custom validations

- [ ] test accessible CRUD

- [x] integration tests for:
    * navigation
    * admin



## Ongoing To-DO

- [ ] ajax form to profile edit

- [ ] ajax form to hicoo edit

- [ ] add delete ability to owned hicoo/comments

- [ ] make profile displays' hi coo clickable to show

- [ ] add cover photo to profile

- [x] add photo to hicoo

- [x] make main displays' hi coo clickable to show

- [x] make main displays' hi coo AUTHOR clickable to show

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

- [x] add comments interactions with hi coo

- [x] add bio to profile

~~make call for syllable count~~
~~make call for syllable count a helper~~
    * While successful, the api call was slow and inaccurate. Refactored to use a gem.


## Stretch

  * Scoped pages to order by most recent, most liked, most commented.
  * Search Field in menu bar
  * Hi-coo Field in menu bar?
  * Likes as join between users and hi-coos?
  * Seeds for beginning haiku
  * Animations
  - [x] Photos to certain categories?
      * Added optional pic to all hicoo.

  * Add collapsing menu for About, History?
  * Add collapsing menu for profile actions- sessions, edit etc?

<!-- ## Current notes:

How can i make things update instantly one I've gone live? I'm assuming some sort of ajax refresh call, and moving the home hicoo into a partial to call it on.








-->

<!-- * Words api endpoint:

https://wordsapiv1.p.mashape.com/words/{word}/syllables

* Example call:
https://wordsapiv1.p.mashape.com/words/incredible/syllables,
  headers:{
    "X-Mashape-Key" => "KEYHERE",
    "Accept" => "application/json"
  } -->

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
