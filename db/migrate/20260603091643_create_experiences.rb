class CreateExperiences < ActiveRecord::Migration[8.1]
  def change
    create_table :experiences do |t|
      t.string :company
      t.string :position
      t.string :position_type
      t.text :description
      t.date :started_at
      t.date :ended_at
      t.string :location

      t.timestamps
    end
  end
end
