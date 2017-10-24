class HikesController < ProtectedController
  # update to protected controller so that user authentication is required to do anything on application

  before_action :set_hike, only: [:show, :update, :destroy]

  # GET all /hikes
  def index
    @hikes = current_user.hikes.all
    render json: @hikes
  end

  # GET /hikes/1
  def show
    # render json: @hike
    # update to follow examples..
    render json: Hike.find(params[:id])
  end

  # POST /hikes
  def create
    # @hike = Hike.new(hike_params)
    # update to follow examples..
    @hike = current_user.hikes.build(hike_params)

    if @hike.save
      render json: @hike, status: :created, location: @hike
    else
      render json: @hike.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /hikes/1
  def update
    if @hike.update(hike_params)
      render json: @hike
      # or head :no_content if I don't want user to see the update
    else
      render json: @hike.errors, status: :unprocessable_entity
    end
  end

  # DELETE /hikes/1
  def destroy
    @hike.destroy

    # head :no_content --- may be needed later
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hike
      # @hike = Hike.find(params[:id])
      #  update to follow examples ..
      @hike = current_user.hikes.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def hike_params
      params.require(:hike).permit(:hike_date, :hike_name, :city, :state, :elevation_gain, :miles_rt, :difficulty, :rating, :notes)
    end
end
