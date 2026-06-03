class CreateEducations < ActiveRecord::Migration[8.1]
  def change
    create_table :educations do |t|
      t.string :institution
      t.string :qualification_type
      t.string :field_of_study
      t.date :started_at
      t.date :ended_at
      t.string :grade
      t.text :description

      t.timestamps
    end
  end
end
