class Blogpost < ActiveRecord::Base
  has_many :taggings, dependent:  :destroy
  has_many :tags, through:  :taggings
  default_scope -> { order(created_at: :desc) }
end
