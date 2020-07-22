class MissionsController < ApplicationController
    before_action :mission_find, only: [:update, :edit, :destroy, :show]


    def index
        @missions = Mission.all
    end

    def show
    end

    def new
        @mission = Mission.new
        @planets = Planet.all
        @scientists = Scientist.all
    end

    def create
        @mission = Mission.create(mission_params)
        redirect_to mission_path(@mission)
    end

    def edit
    end

    def update
    end

    def destroy
    end

    private

    def mission_params
        params.require(:mission).permit(:name, :scientist_id, :planet_id)
    end

    def mission_find
        @mission = Mission.find(params[:id])
    end

end

