class Book < ActiveRecord::Base
  belongs_to :user

  mount_uploader :photo, PhotoUploader

  attr_accessible :categorie, :description, :isbn, :photo, :price, :title, :user_id


end
