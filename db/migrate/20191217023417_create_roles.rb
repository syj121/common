class CreateRoles < ActiveRecord::Migration[5.2]
  def change
    create_table :roles do |t|
      t.string :name, null: false, comment: "角色名称"
      t.timestamps
    end

    create_table :role_users do |t|
      t.integer :user_id, null: false
      t.integer :role_id, null: false
      t.timestamps
    end

    add_index :role_users, [:user_id, :role_id], unique: true
    add_column :users, :current_role_id, :integer, comment: "当前登录角色"
  end
end
