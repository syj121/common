class Menu < ApplicationRecord

  validates :name, :presence => true, :uniqueness => {:case_sensitive => false, :message => "菜单名不能为空"}

  USABLE = {true: "有用", false: "无用"}

  has_ancestry

end
