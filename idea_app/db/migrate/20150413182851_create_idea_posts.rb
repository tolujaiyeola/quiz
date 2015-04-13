class CreateIdeaPosts < ActiveRecord::Migration
  def change
    create_table :idea_posts do |t|
      t.string :title
      t.text :body

      t.timestamps null: false
    end
  end
end
