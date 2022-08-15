class PrivatesController < ApplicationController
  before_action :set_private, only: %i[ show update destroy ]

  # GET /privates
  def index
    @privates = Private.all
    @privates.each do |elem|
      puts elem
    end
    render json: @privates
  end

  # GET /privates/1
  def show
    render json: @private
  end

  # POST /privates
  def create
    @private = Private.new(private_params)

    if @private.save
      render json: @private, status: :created, location: @private
    else
      render json: @private.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /privates/1
  def update
    if @private.update(private_params)
      render json: @private
    else
      render json: @private.errors, status: :unprocessable_entity
    end
  end

  # DELETE /privates/1
  def destroy
    @private.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_private
      @private = Private.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def private_params
      params.require(:private).permit(:name)
    end
end
