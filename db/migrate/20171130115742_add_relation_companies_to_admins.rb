class AddRelationCompaniesToAdmins < ActiveRecord::Migration[5.1]
  def change
    add_belongs_to :companies, :admin, index: true
  end
end
