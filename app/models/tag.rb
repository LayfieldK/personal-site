class Tag < ActiveRecord::Base
  has_many :taggings, dependent:  :destroy
  has_many :blogposts, through:  :taggings
  

  
  def self.counts
    self.select("name, count(taggings.tag_id) as count").joins(:taggings).group("taggings.tag_id, tags.id, tags.name").order("count DESC")
  end
end
