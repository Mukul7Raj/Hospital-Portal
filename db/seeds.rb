# db/seeds.rb

# Create default users
receptionist = User.create!(email: 'receptionist@example.com', password: 'password', role: 'receptionist')
doctor = User.create!(email: 'doctor@example.com', password: 'password', role: 'doctor')

# Create sample patients
10.times do |i|
  Patient.create!(
    name: "Patient #{i + 1}",
    date_of_birth: Date.today - (20 + rand(50).years),
    gender: ['Male', 'Female'].sample,
    contact_number: "123456789#{i}",
    address: "Address #{i + 1}"
  )
end

# Create sample appointments
patients = Patient.all
patients.each do |patient|
  Appointment.create!(
    patient: patient,
    user: doctor,
    scheduled_at: DateTime.now + rand(1..30).days,
    status: ['scheduled', 'completed', 'canceled'].sample
  )
end