class Blogpost < ActiveRecord::Base
  has_many :taggings, dependent:  :destroy
  has_many :tags, through:  :taggings
  default_scope -> { order(created_at: :desc) }
  
  def all_tags=(names)
    self.tags = names.split(",").map do |name|
        Tag.where(name: name.strip).first_or_create!
    end
  end
  
  def all_tags
    self.tags.map(&:name).join(", ")
  end
  
  def self.tagged_with(name)
    Tag.find_by_name!(name).blogposts 
  end
end
