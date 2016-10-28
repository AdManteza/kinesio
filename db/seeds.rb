# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

patient = Patient.create(firstname: 'Adrian', lastname: 'Manteza', contact_num: '6475546266', 
              facebook_account: 'facebook.com', email: 'poltergeist10480@gmail.com',
              password: '123456', password_confirmation: '123456')

patient.skip_confirmation!
patient.save!
