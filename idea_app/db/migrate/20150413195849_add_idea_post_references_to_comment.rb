class AddIdeaPostReferencesToComment < ActiveRecord::Migration
  def change
    add_reference :comments, :idea_post, index: true, foreign_key: true
  end
end
