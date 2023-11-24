require 'active_record'

ActiveRecord::Base.establish_connection(
  adapter: 'sqlite3',
  database: 'example.db'
)

class User < ActiveRecord::Base
end

# ActiveRecord::Schema.define do
#   create_table :users do |t|
#     t.string :name
#     t.integer :age
#   end
# end

puts "Creating users..."
User.create(name: 'John Doe', age: 25)
User.create(name: 'Jane Smith', age: 30)

puts "\nReading all users:"
all_users = User.all
all_users.each do |user|
  puts "#{user.name}, #{user.age} years old"
end

puts "\nUpdating user with id=1..."
user_to_update = User.find(1)
user_to_update.update(age: 26)

puts "\nReading all users after update:"
all_users_after_update = User.all
all_users_after_update.each do |user|
  puts "#{user.name}, #{user.age} years old"
end

puts "\nDeleting user with id=2..."
user_to_delete = User.find(2)
user_to_delete.destroy

puts "\nReading all users after delete:"
all_users_after_delete = User.all
all_users_after_delete.each do |user|
  puts "#{user.name}, #{user.age} years old"
end
