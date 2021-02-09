class TableSymplisController < ApplicationController
  before_action :set_table_sympli, only: %i[ show edit update destroy ]

  # GET /table_symplis or /table_symplis.json
  def index
    @table_symplis = TableSympli.all
  end

  # GET /table_symplis/1 or /table_symplis/1.json
  def show
  end

  # GET /table_symplis/new
  def new
    @table_sympli = TableSympli.new
  end

  # GET /table_symplis/1/edit
  def edit
  end

  # POST /table_symplis or /table_symplis.json
  def create
    @table_sympli = TableSympli.new(table_sympli_params)

    respond_to do |format|
      if @table_sympli.save
        format.html { redirect_to @table_sympli, notice: "Table sympli was successfully created." }
        format.json { render :show, status: :created, location: @table_sympli }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @table_sympli.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /table_symplis/1 or /table_symplis/1.json
  def update
    respond_to do |format|
      if @table_sympli.update(table_sympli_params)
        format.html { redirect_to @table_sympli, notice: "Table sympli was successfully updated." }
        format.json { render :show, status: :ok, location: @table_sympli }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @table_sympli.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /table_symplis/1 or /table_symplis/1.json
  def destroy
    @table_sympli.destroy
    respond_to do |format|
      format.html { redirect_to table_symplis_url, notice: "Table sympli was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_table_sympli
      @table_sympli = TableSympli.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def table_sympli_params
      params.require(:table_sympli).permit(:dta, :dna, :dte, :dne, :nde, :np, :is_arus)
    end
end
