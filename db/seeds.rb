# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Tenant.create([{f_name: 'Bob', l_name: 'Heck', phone: '0872432222',
  email: 'bob@gmail.com', password: 'foobar', smoker: false,
  pet_owner: true, refs_avail: true, occupation: 'student',
  bio: 'Likes long walks on the beach'}])
