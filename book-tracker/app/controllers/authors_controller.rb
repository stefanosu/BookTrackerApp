class AuthorsController < ApplicationController

    def index 
        authors = Author.all
        render json: AuthorSerializer.new(authors)
        
    end


    def show 
        author = Author.find(params[:id])
        render json: AuthorSerializer.new(author)

    end
end
