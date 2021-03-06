# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

simon = User.create(username: 'simon', password: 'password', first_name: 'mohammed', last_name: 'chisti')
hira = User.create(username: 'hira', password: 'password', first_name: 'zahirul', last_name: 'islam')

chat = Chat.create

UserChat.create(user_id: simon.id, chat_id: chat.id)
UserChat.create(user_id: hira.id, chat_id: chat.id)

Message.create(user_id: simon.id, chat_id: chat.id, message: 'Hello')
Message.create(user_id: hira.id, chat_id: chat.id, message: 'Hi')
