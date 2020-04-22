class ImageUploader < CarrierWave::Uploader::Base
  include CarrierWave::MiniMagick

  # if Rails.env.development?
  #   storage :fog
  # elsif Rails.env.test?
  #   storage :fog
  # else
    storage :fog
  # end

  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

  def extension_whitelist
    %w(jpg jpeg gif png)
  end

  def filename
    original_filename if original_filename
  end

  process resize_to_fit: [400,400]
end

