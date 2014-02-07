class SourcingpartnersController < ApplicationController
  # GET /sourcingpartners
  # GET /sourcingpartners.json
  def index
    @sourcingpartners = Sourcingpartner.search(params[:name])

if !session[:logged_in]
  redirect_to :controller => 'login3', 
              :action => 'login_page' 
  return
end
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @sourcingpartners }
    end
  end

  # GET /sourcingpartners/1
  # GET /sourcingpartners/1.json
  def show
    @sourcingpartner = Sourcingpartner.find(params[:id])
if !session[:logged_in]
  redirect_to :controller => 'login3', 
              :action => 'login_page' 
  return
end

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @sourcingpartner }
    end
  end

  # GET /sourcingpartners/new
  # GET /sourcingpartners/new.json
  def new
    @sourcingpartner = Sourcingpartner.new

if !session[:logged_in]
  redirect_to :controller => 'login3', 
              :action => 'login_page' 
  return
end
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @sourcingpartner }
    end
  end

  # GET /sourcingpartners/1/edit
  def edit
    @sourcingpartner = Sourcingpartner.find(params[:id])
  if !session[:logged_in]
  redirect_to :controller => 'login3', 
              :action => 'login_page' 
  return
end
  end

  # POST /sourcingpartners
  # POST /sourcingpartners.json
  def create
    @sourcingpartner = Sourcingpartner.new(params[:sourcingpartner])

    respond_to do |format|
      if @sourcingpartner.save
        format.html { redirect_to @sourcingpartner, notice: 'Experience was successfully created.' }
        format.json { render json: @sourcingpartner, status: :created, location: @sourcingpartner }
      else
        format.html { render action: "new" }
        format.json { render json: @sourcingpartner.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /sourcingpartners/1
  # PUT /sourcingpartners/1.json
  def update
    @sourcingpartner = Sourcingpartner.find(params[:id])

    respond_to do |format|
      if @sourcingpartner.update_attributes(params[:sourcingpartner])
        format.html { redirect_to @sourcingpartner, notice: 'Experience was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @sourcingpartner.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sourcingpartners/1
  # DELETE /sourcingpartners/1.json
  def destroy
    @sourcingpartner = Sourcingpartner.find(params[:id])
    @sourcingpartner.destroy

if !session[:logged_in]
  redirect_to :controller => 'login3', 
              :action => 'login_page' 
  return
end

    respond_to do |format|
      format.html { redirect_to sourcingpartners_url }
      format.json { head :no_content }
    end
  end
end