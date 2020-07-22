class ScientistsController < ApplicationController

    def index
        @scientists = Scientist.all
    end

    def show
    end

    def new
    end

    def create
    end

    def edit
    end

    def update
    end

    def destroy
    end

    private

    def scientist_params
    end

end
