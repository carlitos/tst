class Book < ActiveRecord::Base
  belongs_to :user_id
  attr_accessible :categorie, :description, :isbn, :photo, :price, :title
end
