class Tagging < ActiveRecord::Base
  belongs_to  :blogpost
  belongs_to  :tag
  validates :blogpost_id, presence: true
  validates :tag_id, presence: true
end
