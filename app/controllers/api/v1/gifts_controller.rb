class Api::V1::GiftsController < ApplicationController
  before_action :set_gift, only: [:show,:update,:destroy]

  def index
    gifts = Gift.all
    render json: gifts, status: 200
  end

  def create
    gift = Gift.create(gift_params)
    render json: gift, status: 201
  end

  def update
    @gift.update(gift_params)
    render json: @gift, status: 200
  end

  def destroy
    giftId = @gift.id
    @gift.destroy
    render json: {message:"Zap! Gift deleted", giftId:giftId}
  end

  def show
    render json: @gift, status: 200
  end

  private
  def gift_params
    params.permit(:name, :gift_img, :description, :person_id)
  end

  def set_gift
    @gift = Gift.find(params[:id])
  end

end
