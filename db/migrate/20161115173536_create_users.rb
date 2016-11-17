class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.text :name
      t.text :email
      t.text :password_digest
      t.boolean :admin
			t.integer :post_id

      t.timestamps
    end
  end
end
