class AddBlogRefToVersions < ActiveRecord::Migration[6.1]
  def change
    add_reference :versions, :blog, foreign_key: true
  end
end
