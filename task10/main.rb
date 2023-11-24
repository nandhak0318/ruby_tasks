require 'csv'

csv_file_path = 'ab.csv'
data = CSV.read(csv_file_path, headers: true)

sorted_data = data.sort_by { |row| row['Name'] }

puts "Sorted Data:"
sorted_data.each do |row|
  puts "#{row['Name']} #{row['Age']}  #{row['City']}"
end