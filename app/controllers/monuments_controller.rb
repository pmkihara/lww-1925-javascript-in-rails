class MonumentsController < ApplicationController
  before_action :set_monument, only: %i[show edit update destroy]

  # GET /monuments
  def index
    @monuments = Monument.all
    @new_monument = Monument.new
  end

  # GET /monuments/1
  def show
  end

  # GET /monuments/new
  def new
    @monument = Monument.new
  end

  # GET /monuments/1/edit
  def edit
  end

  # POST /monuments
  def create
    @monument = Monument.new(monument_params)

    respond_to do |format|
      if @monument.save
        format.html { redirect_to @monument, notice: "Monument was successfully created." }
        format.json # siga o padrão e busque uma view chamada create.json
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json # siga o padrão e busque uma view chamada create.json
      end
    end
  end

  # PATCH/PUT /monuments/1
  def update
    if @monument.update(monument_params)
      redirect_to @monument, notice: "Monument was successfully updated.", status: :see_other
    else
      render :edit, status: :unprocessable_entity
    end
  end

  # DELETE /monuments/1
  def destroy
    @monument.destroy!
    redirect_to monuments_url, notice: "Monument was successfully destroyed.", status: :see_other
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_monument
    @monument = Monument.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def monument_params
    params.require(:monument).permit(:name, :address, :opening_date)
  end
end
