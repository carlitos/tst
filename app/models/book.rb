class Book < ActiveRecord::Base
  belongs_to :user_id

  mount_uploader :photo, PhotoUploader

  attr_accessible :categorie, :description, :isbn, :photo, :price, :title


end
