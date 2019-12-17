module Background
  class MenusController < Background::AllCommonController

    def index
      @q = Menu.ransack(params[:q])
      @menus = @q.result.page(params[:page])
    end

    def new
      @menu = Menu.new
    end

    def create
      @menu = Menu.create(menu_params)
    end

    private
    def menu_params
      params.require(:menu).permit(:name,:url,:position, :usable, :code)
    end

  end
end