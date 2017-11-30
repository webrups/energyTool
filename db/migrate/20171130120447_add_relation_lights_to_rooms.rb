class AddRelationLightsToRooms < ActiveRecord::Migration[5.1]
  def change
    add_belongs_to :lights, :space, index: true
  end
end
