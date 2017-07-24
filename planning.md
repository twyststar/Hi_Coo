## Schema

  * Users - devise
    * Add admin boolean
  * Profile - belongs to User
    * Username
    * Avatar - paperclip
    * Hi-Quote
  * Haikus - belongs to Profile
    * poem - validations for haiku 5-7-5
    * poet
  * Comments - belongs to Haikus, belongs to Profile - polymorphic?
    * body
    * author
  * Categories/tags - belong to haiku

## Validations

  _Haiku must validate at 5-7-5_
  _Comments/discussion on haiku can be plain language, validate for length_

## Authentication

  * Devise for user auth, rails_admin for admin

## Appearance


## Stretch

  * Seeds for beginning haiku
  * Animations
  * Photos to certain categories?
