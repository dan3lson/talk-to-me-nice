#
# Users
#
User.destroy_all
User.create!(username: 'foo', password: 'password')
User.create!(username: 'bar', password: 'password')