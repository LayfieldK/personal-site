class AddTagsWithoutMarkdownToBlogposts < ActiveRecord::Migration
  def change
    add_column :blogposts, :tags_without_markdown, :string
  end
end
