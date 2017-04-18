class Student < ApplicationRecord
  belongs_to :teacher
  validates :name, :age, presence: true

  def school
    teacher.school
  end
end
