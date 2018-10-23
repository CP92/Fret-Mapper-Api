# frozen_string_literal: true

class TuningsController < OpenReadController
  before_action :set_tuning, only: %i[show update destroy]

  # GET /tunings
  def index
    @tunings = current_user.tunings.all

    render json: @tunings
  end

  # GET /tunings/1
  def show
    render json: @tuning
  end

  # POST /tunings
  def create
    @tuning = current_user.tunings.new(tuning_params)

    if @tuning.save
      render json: @tuning, status: :created, location: @tuning
    else
      render json: @tuning.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /tunings/1
  def update
    if @tuning.update(tuning_params)
      render json: @tuning
    else
      render json: @tuning.errors, status: :unprocessable_entity
    end
  end

  # DELETE /tunings/1
  def destroy
    @tuning.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tuning
      @tuning = current_user.tunings.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def tuning_params
      params.require(:tuning).permit(:title, :string0 => [], :string1 => [], :string2 => [], :string3 => [], :string4 => [], :string5 => [])
    end
end
