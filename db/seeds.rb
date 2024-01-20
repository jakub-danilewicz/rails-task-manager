# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
puts "Deleting Tasks..."
Task.delete_all
sleep 5

task_1 = Task.create(title: "Laundry", details: "Do not mix colors!")
puts "#{task_1.title} Task with id: ##{task_1.id} was created"

task_2 = Task.create(title: "Studying", details: "A lot of flashcards to do", completed: true)
puts "#{task_2.title} Task with id: ##{task_2.id} was created"
