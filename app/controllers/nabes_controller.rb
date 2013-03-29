class NabesController < ApplicationController
  # GET /nabes
  # GET /nabes.json
  def index
    @nabes = Nabe.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @nabes }
    end
  end

  # GET /nabes/1
  # GET /nabes/1.json
  def show
    @nabe = Nabe.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @nabe }
    end
  end

  # GET /nabes/new
  # GET /nabes/new.json
  def new
    @nabe = Nabe.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @nabe }
    end
  end

  # GET /nabes/1/edit
  def edit
    @nabe = Nabe.find(params[:id])
  end

  # POST /nabes
  # POST /nabes.json
  def create
    @nabe = Nabe.new(params[:nabe])

    respond_to do |format|
      if @nabe.save
        format.html { redirect_to @nabe, notice: 'Nabe was successfully created.' }
        format.json { render json: @nabe, status: :created, location: @nabe }
      else
        format.html { render action: "new" }
        format.json { render json: @nabe.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /nabes/1
  # PUT /nabes/1.json
  def update
    @nabe = Nabe.find(params[:id])

    respond_to do |format|
      if @nabe.update_attributes(params[:nabe])
        format.html { redirect_to @nabe, notice: 'Nabe was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @nabe.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /nabes/1
  # DELETE /nabes/1.json
  def destroy
    @nabe = Nabe.find(params[:id])
    @nabe.destroy

    respond_to do |format|
      format.html { redirect_to nabes_url }
      format.json { head :no_content }
    end
  end
end
