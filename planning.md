## Schema

- [x] Users - devise

        * Add admin boolean

- [x] Profile - belongs to User

        * Username
        * Avatar - paperclip
        * Hi-Quote

- [x] Haikus - belongs to Profile

        * poem - validations for haiku 5-7-5
        * poet

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

- [x] fix hi-quote into 3 columns

- [x] add title field to hi coo

- [ ] make call for syllable count a helper

- [ ] write validations per line



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
