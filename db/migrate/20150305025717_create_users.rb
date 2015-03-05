class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.text  :password_digest
      t.text  :email
      t.timestamps
    end
  end
end
