class AddQualificationToBeerSpot < ActiveRecord::Migration[5.2]
  def change
    add_column :beer_spots, :qualification, :float
  end
end
