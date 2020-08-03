class CreateCulturalExperiences < ActiveRecord::Migration[5.2]
  def change
    create_table :cultural_experiences do |t|

      t.timestamps
    end
  end
end
