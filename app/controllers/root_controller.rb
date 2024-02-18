class RootController < ApplicationController
    def index  
        @routes = Route.all
        @new_route = Route.new
    end

    def create
        @route = Route.new(route_params)

        if @route.save
            redirect_to routes_path, notice: '経路が正常に登録されました。'
        else
            @routes = Route.all
            render :index
        end
    end


    def new  
        
    end

    def edit 
    end

    def result

    end
    private

    def route_params
        params.require(:route).permit(:start_point, :waypoint, :destination)
    end
end
