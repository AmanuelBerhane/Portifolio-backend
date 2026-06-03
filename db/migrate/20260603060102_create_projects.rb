class CreateProjects < ActiveRecord::Migration[8.1]
  def change
    create_table :projects do |t|
      t.string :name
      t.text :description
      t.string :github_url
      t.string :live_url
      t.string :image
      t.text :tech_stack
      t.text :features
      t.string :timeline

      t.timestamps
    end
  end
end
