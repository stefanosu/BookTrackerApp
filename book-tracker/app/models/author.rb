class Author < ApplicationRecord
    has_many :books 
    has_many :books, through: :users
end
