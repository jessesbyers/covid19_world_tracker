class ChartsController < ApplicationController

    before_action :set_collection

    def index
        @charts = @collection.charts
        render json: @charts.to_json(:except => [:updated_at, :created_at])
    end

    def show
        @chart = @collection.charts.find_by(id: params[:id])
        render json: @chart.to_json(:except => [:updated_at, :created_at])
    end

    def create
        @chart = @collection.charts.new(chart_params)
        if @notice.save
            render json: @chart.to_json(:except => [:updated_at, :created_at])
        else
            render json: {error: "Chart cannot be saved to the database. Please try again."}
        end

    end

    # def update
    #     @chart = @collection.charts.find_by(id: params[:id])
    #     if @chart.update()
    #         render json: @chart.to_json(:except => [:updated_at, :created_at])
    #     else 
    #         render json: {error: "Chart was not updated. Please try again."}
    #     end
    # end

    def destroy
        @chart = @collection.notices.find_by(id: params[:id])
        @chart.destroy
        render json: {alert: "Chart Deleted"}
    end

    private

    def chart_params
        params.require(:chart).permit(:country_id, :collection_id)
    end

    def set_collection
        @collection = Collection.find(params[:collection_id])
    end

end
