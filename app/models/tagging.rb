class Tagging < ActiveRecord::Base
  belongs_to  :blogpost
  belongs_to  :tag
  validates :blogpost, presence: true
  validates :tag, presence: true
end
