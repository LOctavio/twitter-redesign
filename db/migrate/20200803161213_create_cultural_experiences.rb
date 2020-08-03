class CreateCulturalExperiences < ActiveRecord::Migration[5.2]
  def change
    create_table :cultural_experiences do |t|
      t.integer :author_id
      t.text :text
      t.datetime :created_at
    end
  end
end
