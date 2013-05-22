class LoasController < ApplicationController
  
  before_filter :get_loa

  def get_loa
    @client = Client.find(params[:client_id])
    @loas = @client.loas
  end


  # GET /loas
  # GET /loas.json
  def index
    @loas = @loas.sort_by(&:expiration_date).reverse

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @loas }
    end
  end

  # GET /loas/1
  # GET /loas/1.json
  def show
    @loa = Loa.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @loa }
    end
  end

  # GET /loas/new
  # GET /loas/new.json
  def new
    @loa = Loa.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @loa }
    end
  end

  # GET /loas/1/edit
  def edit
    @loa = Loa.find(params[:id])
  end

  # POST /loas
  # POST /loas.json
  def create
    @loa = @client.loas.new(params[:loa])

    respond_to do |format|
      if @loa.save
        format.html { redirect_to [@client, @loa], notice: 'Loa was successfully created.' }
        format.json { render json: [@client, @loa], status: :created, location: [@client, @loa] }
      else
        format.html { render action: "new" }
        format.json { render json: @loa.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /loas/1
  # PUT /loas/1.json
  def update
    @loa = Loa.find(params[:id])

    respond_to do |format|
      if @loa.update_attributes(params[:loa])
        format.html { redirect_to [@client, @loa], notice: 'Loa was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @loa.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /loas/1
  # DELETE /loas/1.json
  def destroy
    @loa = Loa.find(params[:id])
    @loa.destroy

    respond_to do |format|
      format.html { redirect_to client_loas_url }
      format.json { head :no_content }
    end
  end
end
