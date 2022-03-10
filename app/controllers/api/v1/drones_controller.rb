class Api::V1::DronesController < Api::V1::BaseController
  acts_as_token_authentication_handler_for User, except: [ :index, :show ]

  before_action :set_drone, only: [ :show, :update, :destroy ]

  def index
    @drones = policy_scope(Drone)
    render json: @drones
  end

  def show
    render json: @drone
  end

  def create
    @drone = Drone.new(drone_params)
    @drone.user = current_user
    authorize @drone
    if @drone.save
      render :show, status: :created
    else
      render_error
    end
  end

  def update
    if @drone.update(drone_params)
      render :show
    else
      render_error
    end
  end

  def destroy
    @drone.destroy
    head :no_content
    # No need to create a `destroy.json.jbuilder` view
  end

  private

  def set_drone
    @drone = Drone.find(params[:id])
    authorize @drone  # For Pundit
  end

  def drone_params
    params.require(:drone).permit(:model, :brand, :photo)
  end

  def render_error
    render json: { errors: @drone.errors.full_messages },
      status: :unprocessable_entity
  end

end
