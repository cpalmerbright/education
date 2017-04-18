class School < ApplicationRecord
  has_many :teachers
  validates :name, presence: true

  def students
    teacher.all.each_with_object([]) do |t, array|
      t.students.each do |s|
        array << s
      end
    end
  end
end
