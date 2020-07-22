class ScientistsController < ApplicationController

    before_action :user_find, only: [:show, :edit, :update, :destroy]

    def index
        @scientists = Scientist.all
    end

    def show
        #user_find @scientist
        @my_planets = @scientist.planets
    end

    def new
        @scientist = Scientist.new
    end

    def create
        @scientist = Scientist.create(scientist_params)

        if @scientist.valid?
            redirect_to scientist_path(@scientist)
        else
            flash[:my_errors] = @scientist.errors.full_messages
            redirect_to new_scientist_path
        end
    end

    def edit
        #user_find @scientist
    end

    def update
        #user_find @scientist
        if @scientist.update(scientist_params)
            redirect_to scientist_path(@scientist)
        else
            flash[:my_errors] = @scientist.errors.full_messages
            redirect_to edit_scientist_path
        end
    end

    def destroy
        #user_find @scientist
        @scientist.destroy
        redirect_to scientists_path

    end

    private

    def scientist_params
        params.require(:scientist).permit(:name, :field_of_study)
    end

    def user_find
        @scientist = Scientist.find(params[:id])
    end
end
