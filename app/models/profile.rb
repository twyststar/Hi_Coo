class Profile < ApplicationRecord
  belongs_to :user
  has_many :hicoos

  validates_uniqueness_of :user_name, :case_sensitive => false

  has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100#" }, :default_url => ":style/missing.png"
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/

  has_attached_file :cover, :styles => { :large => "1050x300>", :thumb => "300x86>" }, :default_url => ":style/cover_default.jpg"

  validates_attachment_content_type :cover, :content_type => /\Aimage\/.*\Z/
end
