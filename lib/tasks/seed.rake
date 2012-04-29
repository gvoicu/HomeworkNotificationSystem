namespace :seed do

desc "Create subjects"
  task :create_subjects => [:environment] do

    Subject.create(:name => "Mathematics 1")
    Subject.create(:name => "Operating systems")
    Subject.create(:name => "Local networks")
    Subject.create(:name => "Data Structures")
    Subject.create(:name => "Design of Algorithms")
    Subject.create(:name => "Mathematics 2")
    Subject.create(:name => "Mathematics 3")
    Subject.create(:name => "Digital electronics")

  end 
end
