class CollectionsController < ApplicationController

    def index
        @collections = Collection.all
        render json: @collections.to_json(:except => [:updated_at, :created_at])
    end

    def show
        @collection = Collection.find(params[:id])
        render json: @collection.to_json(:except => [:updated_at, :created_at])
    end

    def create
        @collection = Collection.new(country_params)
        if @collection.save
            render json: @collection.to_json(:except => [:updated_at, :created_at])
        else
            render json: {error: "Collection cannot be saved to the database. Please try again."}
        end
    end

    def destroy
        @collection = Collection.find(params[:id])
        @collection.destroy
        render json: {alert: "Collection Deleted"}
    end

    private

    def collection_params
        params.require(:collection).permit(:name, :summary)
    end
end
