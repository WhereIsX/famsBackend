# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


yana = User.create(username: 'yana', password: 'pass', name: 'yana' )
chris = User.create(username: 'chris', password: 'pass', name: 'chris' )
michelle = User.create(username: 'michelle', password: 'pass', name: 'michelle')

group_a = Group.create(name: 'alices in wonderland')
group_b = Group.create(name: 'the breakfast club')

yana_a = Member.create(user_id: yana.id, group_id: group_a.id, authority: 1)
yana_b = Member.create(user_id: yana.id, group_id: group_b.id, authority: 1)
chris_a = Member.create(user_id: chris.id, group_id: group_a.id, authority: 2)
# chris_b = Member.create(user_id: chris.id, group_id: group_a.id, authority: 1)
# michelle_a = Member.create(user_id: michelle.id, group_id: group_a.id, authority: 1)
michelle_b = Member.create(user_id: michelle.id, group_id: group_b.id, authority: 2)

Medium.create(user_id: yana.id, group_id: group_a.id, content: 'alices are the best')
Medium.create(user_id: chris.id, group_id: group_a.id, content: 'alices are the best')
Medium.create(user_id: michelle.id, group_id: group_b.id, content: 'alices are the best')



puts "Seeds were planted!  Check out the database (`rails c`) to see if they've sprouted!"
