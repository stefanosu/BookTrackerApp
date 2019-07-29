class User < ApplicationRecord
    has_many :books 
    has_many :books, through: :authors


    validates :username, presence: true 
    validates :username, length:{minimum: 5}
    validates :password, presence: true
    validates :password, length:{minimum: 5}


end
