class BookSerializer
  include FastJsonapi::ObjectSerializer
  attributes :title, :img, :author_id, :user_id, :genre
end
