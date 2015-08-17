module BlogpostsHelper
  
  def tag_links(tags)
    tags.split(",").map{|tag| link_to tag.strip, tag_path(tag.strip) }.join(", ") 
  end
  
  def tag_order(tags)
    tags.sort_by(&:count).reverse!
    tags.each do |tag|
     
      yield(tag, tag.count)
    end
  end
  
end
