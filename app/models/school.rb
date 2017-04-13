class School < ApplicationRecord
  has_many :teachers
  has_many :students
  validates :name, presence: true

  def students
    student_list = []
    teachers.each do |teacher|
      teacher.students.each do |student|
        student_list << student
      end
    end
    student_list
  end
end
