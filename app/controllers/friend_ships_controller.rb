class FriendShipsController < ApplicationController
  before_action :set_friend_ship, only: [:show, :update, :destroy]

  # GET /friend_ships
  def index
    @friend_ships = FriendShip.all

    render json: @friend_ships
  end

  # GET /friend_ships/1
  def show
    render json: @friend_ship
  end

  # POST /friend_ships
  def create
    @friend_ship = FriendShip.new(friend_ship_params)

    if @friend_ship.save
      render json: @friend_ship, status: :created, location: @friend_ship
    else
      render json: @friend_ship.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /friend_ships/1
  def update
    if @friend_ship.update(friend_ship_params)
      render json: @friend_ship
    else
      render json: @friend_ship.errors, status: :unprocessable_entity
    end
  end

  # DELETE /friend_ships/1
  def destroy
    @friend_ship.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_friend_ship
      @friend_ship = FriendShip.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def friend_ship_params
      params.require(:friend_ship).permit(:dog_id, :friend_id)
    end
end
