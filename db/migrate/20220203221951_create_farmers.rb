class CreateFarmers < ActiveRecord::Migration[5.2]
  def change
    create_table :farmers do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.string :address
      t.string :region
      t.string :bio
      t.string :photo_url      

      t.timestamps
    end
  end
end
