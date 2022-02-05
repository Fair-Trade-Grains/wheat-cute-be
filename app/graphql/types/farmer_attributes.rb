module Types
  class FarmerAttributes < Types::BaseInputObject
    argument :name, String, required: true
    argument :email, String, required: true
    argument :phone, String, required: false
    argument :address, String, required: false
    argument :region, String, required: false
    argument :bio, String, required: false
    argument :photo_url, String, required: false
  end
end
