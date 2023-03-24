class AddUserToTree < ActiveRecord::Migration[7.0]
  def change
    add_reference :trees, :user, null: false, foreign_key: true
  end
end
