roles = ['physician', 'patient']
10.times do
  physician = Physician.create(
    name: Faker::TvShows::RickAndMorty.physician
  )
 
  10.times do 
    patient = Patient.create(
      first_name: Faker::Name.first_name,
      last_name: Faker::Name.last_name
    )

    Appointment.create(
      role: roles.sample,
      course_id: course.id,
      user_id: user.id
    )
  end
end

puts "Data Seeded."
