class TicketsController < ApplicationController
  before_action :set_ticket, only: %i[ show edit update destroy ]

  # GET /tickets or /tickets.json
  def index
    unless request.params[:query_twilio].nil?
      @q = request.params[:query_twilio]
      @tickets = Ticket.search(@q)
      if @tickets.any?
        @ticket = @tickets.results.last
      else
        area = Area.where(name: "Area no especifica").first_or_create
        status = area.statuses.where(name: "Abierto").first_or_create
        agent = Agent.where(name: "Agente no especifica").first_or_create
        category = Category.where(name: " Categoria no especifica").first_or_create
        @ticket = Ticket.where(phone_number: @q, category: category, agent: agent, status: status).first_or_create
      end
      redirect_to edit_ticket_path(@ticket)
    end

    ["status_id", "category_id", "agent_id", "area_id"].each do |var|
      eval("
            @#{var} ||= nil;
            @#{var} ||= session[:#{var}];
            @#{var} ||= params[:#{var}];
        ")
    end

    @area ||= Area.all
    @agents ||= @area_id.nil? ? Agent.all : Area.find(@area_id).agents
    @statuses ||=  @area_id.nil? ? Status.all : Area.find(@area_id).statuses
    @categories ||= @area_id.nil? ? Category.all : Area.find(@area_id).categories

    [{single: "status_id", plural: "statuses"},
     {single: "category_id", plural: "categories"},
     {single: "agent_id", plural: "agents"}].each do |var|
      eval("
            @#{var[:plural]} = @#{var[:plural]}.where(id: @#{var[:single]}) unless @#{var[:single]}.nil? ;
        ")
    end

    if  request.params[:query].nil?
      @tickets ||= Ticket.where(status: @statuses, category: @categories, agent: @agents)
      @tickets = @tickets.limit(10)
    else
      @tickets ||= Ticket.search(request.params[:query])
    end
  end

  # GET /tickets/1 or /tickets/1.json
  def show
  end

  # GET /tickets/new
  def new
    @ticket ||= Ticket.new

    # reflex dynamic logic
    @area_id ||= nil
    @area_id ||= @ticket.area.id unless @ticket.area.nil?
    @area_id ||= session[:area_id]
    @area_id ||= params[:area_id]
    @statuses = Status.all

    unless @area_id.nil?
      @area = Area.find(@area_id)
      @statuses = @area.statuses
      @ticket.area = @area
    end

  end

  # GET /tickets/1/edit
  def edit

    # reflex dynamic logic
    @area_id ||= nil
    @area_id ||= @ticket.area.id unless @ticket.area.nil?
    @area_id ||= session[:area_id]
    @area_id ||= params[:area_id]
    @statuses = Status.all

    unless @area_id.nil?
      @area = Area.find(@area_id)
      @statuses = @area.statuses
      @ticket.area = @area
    end
  end

  # POST /tickets or /tickets.json
  def create
    @ticket = Ticket.new(ticket_params)

    respond_to do |format|
      if @ticket.save
        format.html { redirect_to @ticket, notice: "Ticket was successfully created." }
        format.json { render :show, status: :created, location: @ticket }
      else
        format.html { redirect_to new_ticket_path @ticket, status: :unprocessable_entity, notice: "Ticket was successfully created." }
        format.json { render json: @ticket.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tickets/1 or /tickets/1.json
  def update
    respond_to do |format|
      if @ticket.update(ticket_params)
        format.html { redirect_to @ticket, notice: "Ticket was successfully updated." }
        format.json { render :show, status: :ok, location: @ticket }
      else
        format.html { redirect_to edit_ticket_path @ticket, status: :unprocessable_entity }
        format.json { render json: @ticket.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tickets/1 or /tickets/1.json
  def destroy
    @ticket.destroy
    respond_to do |format|
      format.html { redirect_to tickets_url, notice: "Ticket was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ticket
      @ticket ||= Ticket.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def ticket_params
      params.require(:ticket).permit(:phone_number, :email, :details, :name, :area_id, :category_id, :agent_id, :status_id)
    end
end
