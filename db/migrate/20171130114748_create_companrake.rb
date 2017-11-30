class CreateCompanrake < ActiveRecord::Migration[5.1]
  def change
    create_table :companrakes do |t|
      t.string :db
    end
  end
end
