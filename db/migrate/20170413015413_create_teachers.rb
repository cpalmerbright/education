class CreateTeachers < ActiveRecord::Migration[5.0]
  def change
    create_table :teachers do |t|
      t.references :school, foreign_key: true
      t.string :name

      t.timestamps
    end
  end
end
