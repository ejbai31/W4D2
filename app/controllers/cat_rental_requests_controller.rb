class CatRentalRequestsController < ApplicationController
  # def show
  #   @cat_rental_request = CatRentalRequest.find_by(id: params[:id])
  #   if @cat_rental_request
  #     render :show
  #   else
  #     render text: "Request not found", status: 404
  #   end
  # end

  def new
    @cats = Cat.all
    render :new
  end

  def create
    request = CatRentalRequest.new(cat_rental_request_params)

    if request.save
      # p cat_rental_request_params[:cat_id]
      redirect_to cat_url(cat_rental_request_params[:cat_id])
    else
      render json: request.errors.full_messages, status: 422
    end
  end

  private

  def cat_rental_request_params
    params.require(:cat_rental_request).permit(:cat_id, :start_date, :end_date)
  end
end
