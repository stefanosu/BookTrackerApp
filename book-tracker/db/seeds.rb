# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Book.destroy_all 
Author.destroy_all
User.destroy_all 


author1 = Author.create(name: 'George Orwell')
author2 = Author.create(name: 'Francis Fitzgerald')
author3 = Author.create(name: 'Philip Dick')
author4 = Author.create(name: 'J.D. Salinger')
author5 = Author.create(name: 'Noam Chomsky')
author6 = Author.create(name: 'Daniel Quinn')
author7 = Author.create(name: 'Edward Said')
author8 = Author.create(name: 'Paulo Coelho')
author9 = Author.create(name: 'Fyodor Dostoevsky')



user1 = User.create(username: 'Stefanos', password: 'abc123')
user2 = User.create(username: 'Mike', password: '123abc')
user3 = User.create(username: 'Bear', password: 'paris123')
user4 = User.create(username: 'Yohan', password: 'paris123')
user5 = User.create(username: 'Mus', password: 'paris123')
user6 = User.create(username: 'Amman', password: 'paris123')
user7 = User.create(username: 'Yonas', password: 'paris123')






book1 = Book.create(title: '1984', img: 'img', genre: 'dystopian fiction', user_id: user1.id, author_id: author1.id) 
book2 = Book.create(title: 'Animal Farm', img: 'img', genre: 'political fiction', user_id: user1.id, author_id: author1.id) 
book3 = Book.create(title: 'Do andriods dream of electric sheep', img: 'img', genre: 'SciFi', user_id: user4.id, author_id: author3.id) 
book4 = Book.create(title: 'The Great Gatsby', img: 'img', genre: 'fiction', user_id: user3.id, author_id: author2.id) 
book5 = Book.create(title: 'Catcher in the rye', img: 'img', genre: 'fiction', user_id: user5.id, author_id: author4.id) 
book6 = Book.create(title: 'Ishamel', img: 'img', genre: 'fiction', user_id: '6', author_id: author6.id) 
book7 = Book.create(title: 'Crime and Punishement', img: 'img', genre: 'fiction', user_id: user7.id, author_id: author9.id) 
book8 = Book.create(title: 'Manufacuring Consent', img: 'img', genre: 'fiction', user_id: user5.id, author_id: author5.id) 
book9 = Book.create(title: 'Orientalisim', img: 'img', genre: 'fiction', user_id: user7.id, author_id: author7.id) 
book10 = Book.create(title: 'The Alchemist', img: 'img', genre: 'fiction', user_id: user2.id, author_id: author8.id) 


