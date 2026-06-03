class CreateCertifications < ActiveRecord::Migration[8.1]
  def change
    create_table :certifications do |t|
      t.string :name
      t.string :institution
      t.date :date_given
      t.string :certification_url
      t.string :certificate_image
      t.string :certificate_pdf

      t.timestamps
    end
  end
end
