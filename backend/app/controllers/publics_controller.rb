class PublicsController < ApplicationController
  before_action :set_public, only: %i[ show update destroy ]

  # GET /publics
  def index
    @publics = Public.all

    render json: @publics
  end

  # GET /publics/1
  def show
    render json: @public
  end

  # POST /publics
  def create
    @public = Public.new(public_params)

    if @public.save
      render json: @public, status: :created, location: @public
    else
      render json: @public.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /publics/1
  def update
    if @public.update(public_params)
      render json: @public
    else
      render json: @public.errors, status: :unprocessable_entity
    end
  end

  # DELETE /publics/1
  def destroy
    @public.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_public
      @public = Public.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def public_params
      params.require(:public).permit(:name)
    end
end
