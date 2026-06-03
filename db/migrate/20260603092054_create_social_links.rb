class CreateSocialLinks < ActiveRecord::Migration[8.1]
  def change
    create_table :social_links do |t|
      t.string :platform
      t.string :url
      t.string :icon

      t.timestamps
    end
  end
end
