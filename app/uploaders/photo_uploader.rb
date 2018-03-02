# app/uploaders/photo_uploader.rb
class PhotoUploader < CarrierWave::Uploader::Base
  include Cloudinary::CarrierWave

  def default_url
    "https://cdn.liquor.com/wp-content/uploads/2015/03/hub_classic_cocktail_margarita.jpg"
  end
  # Remove everything else
end
