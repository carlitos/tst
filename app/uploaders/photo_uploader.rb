# encoding: utf-8

class PhotoUploader < CarrierWave::Uploader::Base
  
  include CarrierWave::MiniMagick

  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

  version :thumb do
     process :resize_to_fill => [170, 245]
  end

  def extension_white_list
     %w(jpg jpeg gif png)
  end


end
