class CreateChefs < ActiveRecord::Migration[5.1]
  def change
    create_table :chefs do |t|
      t.string :Chefname
      t.stringra :email
      t.timestamps
    end
  end
end
