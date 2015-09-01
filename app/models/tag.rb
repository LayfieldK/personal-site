class Tag < ActiveRecord::Base
  has_many :taggings, dependent:  :destroy
  has_many :blogposts, through:  :taggings
  

  
  def self.counts
    #cut out tags that are already represented categories
    categories = ["programming", "reviews", "interests", "misc"]
    self.select("name, count(taggings.tag_id) as count").where("name not in (?)", categories).joins(:taggings).group("taggings.tag_id, tags.id, tags.name").order("count DESC")
  end
end
