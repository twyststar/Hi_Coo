## Schema

_ [x] Users - devise
        * Add admin boolean
_ [x] Profile - belongs to User
        * Username
        * Avatar - paperclip
        * Hi-Quote
_ [x] Haikus - belongs to Profile
        * poem - validations for haiku 5-7-5
        * poet
_ [ ] Comments - belongs to Haikus, belongs to Profile - polymorphic?
        * body
        * author
_ [ ] Categories/tags - belong to haiku

## Validations

_ [ ]  _Haiku must validate at 5-7-5_
_ [ ]  _Comments/discussion on haiku can be plain language, validate for length_

## Authentication

_ [x]  Devise for user auth, rails_admin for admin

## Appearance


## Stretch
  * Likes as join between users and hi-coos?
  * Seeds for beginning haiku
  * Animations
  * Photos to certain categories?


## Ongoing To-DO

_ [x] fix hi-quote into 3 columns
_ [x] add title field to hi coo
_ [ ] make call for syllable count a helper
_ [ ] write validations per line



## Current notes:

Words api endpoint:
https://wordsapiv1.p.mashape.com/words/{word}/syllables

https://wordsapiv1.p.mashape.com/words/incredible/syllables,
  headers:{
    "X-Mashape-Key" => "4EnK1BzSRAmshY3qGoIuBudwb3qjp1SCHkVjsn5xPYLmRg08UV",
    "Accept" => "application/json"
  }

rest_client gem example:

require 'rest-client'

RestClient.get(url, headers={})
