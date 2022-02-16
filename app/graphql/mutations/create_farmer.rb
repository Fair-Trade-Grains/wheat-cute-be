module Mutations
  class CreateFarmer < BaseMutation
    argument :attributes, Types::FarmerAttributes, required: true
    field :farmer, Types::FarmerType
    field :errors, String

    type Types::FarmerType

    def resolve(attributes: nil)
      if attributes.to_h[:photo_url] == ""
        attributes = { :name =>attributes.to_h[:name],
                       :email =>attributes.to_h[:email],
                       :phone =>attributes.to_h[:phone],
                       :address =>attributes.to_h[:address],
                       :region =>attributes.to_h[:region],
                       :bio =>attributes.to_h[:bio],
                       :photo_url =>"#{random_farm_image}"
                     }
        farmer = Farmer.new(attributes: attributes.to_h)
      else
        farmer = Farmer.new(attributes: attributes.to_h)
      end
      if farmer.save
        { farmer: farmer, errors: nil }
      else
        { farmer: nil, errors: farmer.errors.full_messages.join(", ") }
      end
    end

    def random_farm_image
      array = ["https://res.cloudinary.com/drsgz7uiy/image/upload/v1644969516/wheatcute/dpvzypesuyemtotjhjwg.jpg",
                "https://res.cloudinary.com/drsgz7uiy/image/upload/v1644969554/wheatcute/thimagd7q6tyvgriyyhx.jpg",
                "https://res.cloudinary.com/drsgz7uiy/image/upload/v1644969610/wheatcute/tmqxmfumi6eehn8rijod.jpg",
                "https://res.cloudinary.com/drsgz7uiy/image/upload/v1644969643/wheatcute/l7h3nauk86arhiljxnvd.jpg",
                "https://res.cloudinary.com/drsgz7uiy/image/upload/v1644969678/wheatcute/ebmp1asm70j7jmwlp5so.jpg",
                "https://res.cloudinary.com/drsgz7uiy/image/upload/v1644969786/wheatcute/u4jlw3hndjprnd4yu1rk.jpg",
                "https://res.cloudinary.com/drsgz7uiy/image/upload/v1644972475/wheatcute/xbihl2g2ycl0y9bgizp0.jpg",
                "https://res.cloudinary.com/drsgz7uiy/image/upload/v1644972540/wheatcute/t7x98fmtkrezoulhqlxl.jpg"]
      array.shuffle.pop(1).first
    end
  end
end
