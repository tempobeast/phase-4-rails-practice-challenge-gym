class ClientsController < ApplicationController

    def show
        client = Client.find(params[:id])
        render json: client, status: :ok
    end

    private

    def render_not_found_response
        render json: {errors: "Client not found"}, status: :not_found
    end

end
