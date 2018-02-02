# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Student.find_or_create_by(first_name: "Jane", last_name: "Jones")
Student.find_or_create_by(first_name: "John", last_name: "Smith")
Student.find_or_create_by(first_name: "Bryan", last_name: "Anderson")
Student.find_or_create_by(first_name: "Andrew", last_name: "Wesley")
Student.find_or_create_by(first_name: "James", last_name: "Bond")
Student.find_or_create_by(first_name: "Clark", last_name: "Kent")
