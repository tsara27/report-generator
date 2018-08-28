require 'digest'

password = Digest::MD5.hexdigest "z59passwordxz"
user = User.find_or_create_by(username: 'laras') do |user|
  user.encrypted_password = password
  user.token = ''
end


rooms_name = ['Berlian', 'Ruby Timur', 'Ruby Pediatrik', 'Topas Barat',
              'Topas Maternity']
rooms_without_class_name = ['Nursery', 'Perina', 'HCU', 'PICU', 'NICU', 'ICU']

rooms_name.each do |n|
  room = Room.find_or_create_by(name: n) do |room|
    room.user = user
    room.number_of_beds = 0
  end
end

rooms_without_class_name.each do |n|
  room = Room.find_or_create_by(name: n) do |room|
    room.user = user
    room.number_of_beds = Faker::Number.between(1, 5).to_i
  end
end

berlian = Room.find_by(name: 'Berlian')
berlian_classes = ['President Suite', 'Suite', 'Junior Suite', 'Kelas Premier',
                   'Kelas Utama', 'Kelas 1']
berlian_classes.each do |n|
  room_class = RoomClass.find_or_create_by(name: n, room: berlian) do |c|
                 c.user = user
                 c.number_of_beds = Faker::Number.between(1, 5).to_i
               end
end

ruby = Room.find_by(name: 'Ruby Timur')
ruby_classes = ['Kelas 1', 'Kelas 2', 'Isolasi']
ruby_classes.each do |n|
  room_class = RoomClass.find_or_create_by(name: n, room: ruby) do |c|
                 c.user = user
                 c.number_of_beds = Faker::Number.between(1, 5).to_i
               end
end

ruby_pediatrik = Room.find_by(name: 'Ruby Pediatrik')
ruby_pediatrik_classes = ['Kelas Premier', 'Kelas 1', 'Kelas 2', 'Kelas 3', 'Isolasi']
ruby_pediatrik_classes.each do |n|
  room_class = RoomClass.find_or_create_by(name: n, room: ruby_pediatrik) do |c|
                 c.user = user
                 c.number_of_beds = Faker::Number.between(1, 5).to_i
               end
end

topas_barat = Room.find_by(name: 'Topas Barat')
topas_barat_classes = ['Kelas 2', 'Kelas 3']
topas_barat_classes.each do |n|
  room_class = RoomClass.find_or_create_by(name: n, room: topas_barat) do |c|
                 c.user = user
                 c.number_of_beds = Faker::Number.between(1, 5).to_i
               end
end

topas_maternity = Room.find_by(name: 'Topas Maternity')
topas_maternity_classes = ['Suite', 'Junior Suite', 'Kelas Premier', 'Kelas Utama', 'Kelas 1', 'Kelas 2', 'Kelas 3']
topas_maternity_classes.each do |n|
  room_class = RoomClass.find_or_create_by(name: n, room: topas_maternity) do |c|
                 c.user = user
                 c.number_of_beds = Faker::Number.between(1, 5).to_i
               end
end


