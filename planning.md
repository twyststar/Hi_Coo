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

- [ ]  _Haiku must validate at 5-7-5_

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

- [ ] make call for syllable count

- [ ] make call for syllable count a helper

- [ ] write validations per line

- [ ] add comments db

- [ ] add comments interactions with hi coo



## Current notes:

Words api endpoint:
https://wordsapiv1.p.mashape.com/words/{word}/syllables

https://wordsapiv1.p.mashape.com/words/incredible/syllables,
  headers:{
    "X-Mashape-Key" => "KEYHERE",
    "Accept" => "application/json"
  }

rest_client gem example:

require 'rest-client'

RestClient.get(url, headers={})
