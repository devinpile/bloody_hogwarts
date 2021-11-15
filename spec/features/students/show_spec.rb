require 'rails_helper'

RSpec.describe "Student Show Page" do
  before do
    @student1 = Student.create!(name: "Alby", age: 13, house: "Grymblehuff")
    @course1 = Course.create!(name: "Healing Potions")
    @course2 = Course.create!(name: "Defense Spells")
    @course3 = Course.create!(name: "Attack Spells")
    @student_course = StudentCourse.create!(course_id: @course1.id, student_id: @student1.id)
    @student_course = StudentCourse.create!(course_id: @course2.id, student_id: @student1.id)
    @student_course = StudentCourse.create!(course_id: @course3.id, student_id: @student1.id)

    visit "/students/#{@student1.id}"
  end

  describe "when i visit a student show page" do
    it "i see a list of student courses" do
      expect(page).to have_content(@course1.name)
      expect(page).to have_content(@course2.name)
      expect(page).to have_content(@course3.name)
    end
  end
end