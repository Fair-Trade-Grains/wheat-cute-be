module Mutations
  class CreateFarmer < BaseMutation
    argument :attributes, Types::FarmerAttributes, required: true
    field :farmer, Types::FarmerType
    field :errors, String

    type Types::FarmerType

    def resolve(attributes: nil)
      if attributes.to_h[:photo_url].nil?
        attributes = { :name =>attributes.to_h[:name],
                       :email =>attributes.to_h[:name],
                       :phone =>attributes.to_h[:name],
                       :address =>attributes.to_h[:name],
                       :region =>attributes.to_h[:name],
                       :bio =>attributes.to_h[:name],
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
      array = ["https://images.unsplash.com/photo-1444858291040-58f756a3bdd6?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwyOTE4MDZ8MHwxfHNlYXJjaHwxfHxmYXJtfGVufDB8fHx8MTY0NDk0NjUwNA&ixlib=rb-1.2.1&q=80&w=1080",
               "https://images.unsplash.com/photo-1523741543316-beb7fc7023d8?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwyOTE4MDZ8MHwxfHNlYXJjaHwyfHxmYXJtfGVufDB8fHx8MTY0NDk0NjUwNA&ixlib=rb-1.2.1&q=80&w=1080",
               "https://images.unsplash.com/photo-1500382017468-9049fed747ef?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwyOTE4MDZ8MHwxfHNlYXJjaHwzfHxmYXJtfGVufDB8fHx8MTY0NDk0NjUwNA&ixlib=rb-1.2.1&q=80&w=1080",
               "https://images.unsplash.com/photo-1560493676-04071c5f467b?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwyOTE4MDZ8MHwxfHNlYXJjaHw0fHxmYXJtfGVufDB8fHx8MTY0NDk0NjUwNA&ixlib=rb-1.2.1&q=80&w=1080",
               "https://images.unsplash.com/photo-1499529112087-3cb3b73cec95?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwyOTE4MDZ8MHwxfHNlYXJjaHw1fHxmYXJtfGVufDB8fHx8MTY0NDk0NjUwNA&ixlib=rb-1.2.1&q=80&w=1080",
               "https://images.unsplash.com/photo-1495107334309-fcf20504a5ab?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwyOTE4MDZ8MHwxfHNlYXJjaHw2fHxmYXJtfGVufDB8fHx8MTY0NDk0NjUwNA&ixlib=rb-1.2.1&q=80&w=1080",
               "https://images.unsplash.com/9/fields.jpg?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwyOTE4MDZ8MHwxfHNlYXJjaHw3fHxmYXJtfGVufDB8fHx8MTY0NDk0NjUwNA&ixlib=rb-1.2.1&q=80&w=1080",
               "https://images.unsplash.com/photo-1515150144380-bca9f1650ed9?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwyOTE4MDZ8MHwxfHNlYXJjaHw4fHxmYXJtfGVufDB8fHx8MTY0NDk0NjUwNA&ixlib=rb-1.2.1&q=80&w=1080",
               "https://images.unsplash.com/photo-1454179083322-198bb4daae41?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwyOTE4MDZ8MHwxfHNlYXJjaHw5fHxmYXJtfGVufDB8fHx8MTY0NDk0NjUwNA&ixlib=rb-1.2.1&q=80&w=1080",
               "https://images.unsplash.com/photo-1500076656116-558758c991c1?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwyOTE4MDZ8MHwxfHNlYXJjaHwxMHx8ZmFybXxlbnwwfHx8fDE2NDQ5NDY1MDQ&ixlib=rb-1.2.1&q=80&w=1080"]
      array.shuffle.pop(1).first
    end
  end
end
