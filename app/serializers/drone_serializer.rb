class DroneSerializer < ActiveModel::Serializer
  include Rails.application.routes.url_helpers
  attributes :id, :model, :brand, :photo, :user_id
  def photo
    if object.photo.attached?
      {
        url: rails_blob_url(object.photo)
      }
    end
  end
end
