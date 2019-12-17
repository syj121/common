module Background
  class AllCommonController < ApplicationController

    # devise方法验证用户登录
    before_action :authenticate_user!

  end
end