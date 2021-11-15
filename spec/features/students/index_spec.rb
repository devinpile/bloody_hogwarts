require 'rails_helper'

RSpec.describe "Students Index Page" do
  before do
    @student1 = Student.create!(name: "Alby", age: 13, house: "Grymblehuff")
    @student2 = Student.create!(name: "Bael", age: 14, house: "Puffledorff")
    @student3 = Student.create!(name: "Cora", age: 12, house: "Devorialian")

    visit "/students"
  end

  describe "when i visit a students index page" do
    it "i see a list of students with their age and house" do
      within "#student-#{@student1.id}" do
        expect(page).to have_content(@student1.name)
        expect(page).to have_content(@student1.age)
        expect(page).to have_content(@student1.house)
      end
      within "#student-#{@student2.id}" do
        expect(page).to have_content(@student2.name)
        expect(page).to have_content(@student2.age)
        expect(page).to have_content(@student2.house)
      end
      within "#student-#{@student3.id}" do
        expect(page).to have_content(@student3.name)
        expect(page).to have_content(@student3.age)
        expect(page).to have_content(@student3.house)
      end
    end
  end
end