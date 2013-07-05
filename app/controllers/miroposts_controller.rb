class MiropostsController < ApplicationController
  # GET /miroposts
  # GET /miroposts.json
  def index
    @miroposts = Miropost.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @miroposts }
    end
  end

  # GET /miroposts/1
  # GET /miroposts/1.json
  def show
    @miropost = Miropost.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @miropost }
    end
  end

  # GET /miroposts/new
  # GET /miroposts/new.json
  def new
    @miropost = Miropost.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @miropost }
    end
  end

  # GET /miroposts/1/edit
  def edit
    @miropost = Miropost.find(params[:id])
  end

  # POST /miroposts
  # POST /miroposts.json
  def create
    @miropost = Miropost.new(params[:miropost])

    respond_to do |format|
      if @miropost.save
        format.html { redirect_to @miropost, notice: 'Miropost was successfully created.' }
        format.json { render json: @miropost, status: :created, location: @miropost }
      else
        format.html { render action: "new" }
        format.json { render json: @miropost.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /miroposts/1
  # PUT /miroposts/1.json
  def update
    @miropost = Miropost.find(params[:id])

    respond_to do |format|
      if @miropost.update_attributes(params[:miropost])
        format.html { redirect_to @miropost, notice: 'Miropost was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @miropost.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /miroposts/1
  # DELETE /miroposts/1.json
  def destroy
    @miropost = Miropost.find(params[:id])
    @miropost.destroy

    respond_to do |format|
      format.html { redirect_to miroposts_url }
      format.json { head :no_content }
    end
  end
end
