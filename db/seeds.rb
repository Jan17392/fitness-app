# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'rubygems'
require 'faker'

5.times do
  Club.create(
    name: Faker::Company.name,
    street: Faker::Address.street_name,
    city: Faker::Address.city,
    postcode: Faker::Address.zip_code,
    country: Faker::Address.country,
    street_no: Faker::Address.building_number,
    description: "Another awesome Club"
  )
end

20.times do
  Customer.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.email,
    phone_home: Faker::PhoneNumber.phone_number,
    phone_mobile: Faker::PhoneNumber.cell_phone,
    birthdate: Faker::Date.birthday(18, 65),
    gender: 1,
    photo: Faker::Avatar.image,
    club_id: 1
  )
end

5.times do
  EmployeeType.create(
    name: Faker::Company.profession
  )
end

10.times do
  Employee.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    employee_type_id: 1,
    email: Faker::Internet.email,
    phone_home: Faker::PhoneNumber.phone_number,
    phone_mobile: Faker::PhoneNumber.cell_phone,
    birthdate: Faker::Date.birthday(18, 65),
    gender: 1,
    photo: Faker::Avatar.image,
    club_id: 1,
    salary: 50_000
  )
end

