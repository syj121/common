class CreateMenus < ActiveRecord::Migration[5.2]
  def change
    create_table :menus do |t|
      t.string :name, null: false, comment: "菜单名称"
      t.string :url, null: false, comment: "路径"
      t.integer :position, default: 0, comment: "排序"
      t.boolean :usable, default: true, comment: "是否可用"
      t.string :code,  comment: "菜单唯一标识"
      t.integer :ancestry_depth, default: 0
      t.string :ancestry
      t.timestamps
    end
  end
end
