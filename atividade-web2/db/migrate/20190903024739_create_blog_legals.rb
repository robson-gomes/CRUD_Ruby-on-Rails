class CreateBlogLegals < ActiveRecord::Migration[6.0]
  def change
    create_table :blog_legals do |t|
      t.string :titulo
      t.string :text

      t.timestamps
    end
  end
end
