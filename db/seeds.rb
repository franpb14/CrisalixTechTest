# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.find_or_create_by(email: 'doctor@crisalix.com') do |user|
  user.name = 'Eric'
  user.surname = 'Gent'
  user.password = 'crisalix2021'
  user.password_confirmation = 'crisalix2021'
  user.city = 'Sevilla'
  user.role = 1
  user.id = 1
end

User.find_or_create_by(email: 'doctor2@crisalix.com') do |user|
  user.name = 'Frank'
  user.surname = 'Patterson'
  user.password = 'crisalix2021'
  user.password_confirmation = 'crisalix2021'
  user.city = 'Madrid'
  user.role = 1
  user.id = 2
end

User.find_or_create_by(email: 'patient@crisalix.com') do |user|
  user.name = 'Gregory'
  user.surname = 'Sutton'
  user.password = 'crisalix2021'
  user.password_confirmation = 'crisalix2021'
  user.city = 'Cadiz'
  user.role = 0
  user.id = 3
end

User.find_or_create_by(email: 'patient2@crisalix.com') do |user|
  user.name = 'Sandra'
  user.surname = 'Cyr'
  user.password = 'crisalix2021'
  user.password_confirmation = 'crisalix2021'
  user.city = 'Cadiz'
  user.role = 0
  user.id = 4
end

Appointment.create do |appointment|
  appointment.date =  DateTime.now.utc
  appointment.photo1.attach(io: File.open(Rails.root.join('db/photos_seeds/foto_stock.jpg')), filename: 'foto_stock.jpg')
  appointment.photo2.attach(io: File.open(Rails.root.join('db/photos_seeds/stock_fina.jpg')), filename: 'stock_fina.jpg')
  appointment.photo3.attach(io: File.open(Rails.root.join('db/photos_seeds/foto_stock.jpg')), filename: 'foto_stock.jpg')
  appointment.id = 1
end

UserAppointment.create do |ua|
  ua.user_id = 1
  ua.appointment_id = 1
end

UserAppointment.create do |ua|
  ua.user_id = 3
  ua.appointment_id = 1
end

Appointment.create do |appointment|
  appointment.date =  DateTime.now.utc
  appointment.photo1.attach(io: File.open(Rails.root.join('db/photos_seeds/foto_stock.jpg')), filename: 'foto_stock.jpg')
  appointment.photo2.attach(io: File.open(Rails.root.join('db/photos_seeds/stock_fina.jpg')), filename: 'stock_fina.jpg')
  appointment.photo3.attach(io: File.open(Rails.root.join('db/photos_seeds/stock_fina.jpg')), filename: 'stock_fina.jpg')
  appointment.id = 2
end

UserAppointment.create do |ua|
  ua.user_id = 2
  ua.appointment_id = 2
end

UserAppointment.create do |ua|
  ua.user_id = 3
  ua.appointment_id = 2
end

Appointment.create do |appointment|
  appointment.date =  DateTime.now.utc
  appointment.photo1.attach(io: File.open(Rails.root.join('db/photos_seeds/stock_fina.jpg')), filename: 'stock_fina.jpg')
  appointment.photo2.attach(io: File.open(Rails.root.join('db/photos_seeds/stock_fina.jpg')), filename: 'stock_fina.jpg')
  appointment.photo3.attach(io: File.open(Rails.root.join('db/photos_seeds/foto_stock.jpg')), filename: 'foto_stock.jpg')
  appointment.id = 3
end

UserAppointment.create do |ua|
  ua.user_id = 1
  ua.appointment_id = 3
end

UserAppointment.create do |ua|
  ua.user_id = 4
  ua.appointment_id = 3
end
