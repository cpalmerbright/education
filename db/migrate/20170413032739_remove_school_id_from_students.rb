class RemoveSchoolIdFromStudents < ActiveRecord::Migration[5.0]
  def change
    remove_column(:students, :school_id)
  end
end
