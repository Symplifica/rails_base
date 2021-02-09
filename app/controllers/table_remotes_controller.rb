class TableRemotesController < ApplicationController
  before_action :set_table_remote, only: %i[ show edit update destroy ]

  # GET /table_remotes or /table_remotes.json
  def index
    @table_remotes = TableRemote.all
  end

  # GET /table_remotes/1 or /table_remotes/1.json
  def show
  end

  # GET /table_remotes/new
  def new
    @table_remote = TableRemote.new
  end

  # GET /table_remotes/1/edit
  def edit
  end

  # POST /table_remotes or /table_remotes.json
  def create
    @table_remote = TableRemote.new(table_remote_params)

    respond_to do |format|
      if @table_remote.save
        format.html { redirect_to @table_remote, notice: "Table remote was successfully created." }
        format.json { render :show, status: :created, location: @table_remote }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @table_remote.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /table_remotes/1 or /table_remotes/1.json
  def update
    respond_to do |format|
      if @table_remote.update(table_remote_params)
        format.html { redirect_to @table_remote, notice: "Table remote was successfully updated." }
        format.json { render :show, status: :ok, location: @table_remote }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @table_remote.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /table_remotes/1 or /table_remotes/1.json
  def destroy
    @table_remote.destroy
    respond_to do |format|
      format.html { redirect_to table_remotes_url, notice: "Table remote was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_table_remote
      @table_remote = TableRemote.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def table_remote_params
      params.require(:table_remote).permit(:tde, :nde, :dsrs, :dstd, :dsnd, :dspn, :dssn, :dspa, :dssa, :dsnr, :fenr, :np, :novedad_retiro)
    end
end
