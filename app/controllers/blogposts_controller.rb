class BlogpostsController < ApplicationController
  before_action :set_blogpost, only: [:show, :edit, :update, :destroy]
  before_filter :logged_in?, except: [:show]



  # GET /blogposts
  # GET /blogposts.json
  def index
    if params[:tag]
      @blogposts = Blogpost.tagged_with(params[:tag]).paginate(page: params[:page], :per_page => 5)
    else
      @blogposts = Blogpost.paginate(page: params[:page], :per_page => 5)
    end

  end

  # GET /blogposts/1
  # GET /blogposts/1.json
  def show
  end

  # GET /blogposts/new
  def new
    @blogpost = Blogpost.new
  end

  # GET /blogposts/1/edit
  def edit
  end

  # POST /blogposts
  # POST /blogposts.json
  def create
    @blogpost = Blogpost.new(blogpost_params)

    respond_to do |format|
      if @blogpost.save
        format.html { redirect_to @blogpost, notice: 'Blogpost was successfully created.' }
        format.json { render :show, status: :created, location: @blogpost }
      else
        format.html { render :new }
        format.json { render json: @blogpost.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /blogposts/1
  # PATCH/PUT /blogposts/1.json
  def update
    respond_to do |format|
      if @blogpost.update(blogpost_params)
        format.html { redirect_to @blogpost, notice: 'Blogpost was successfully updated.' }
        format.json { render :show, status: :ok, location: @blogpost }
      else
        format.html { render :edit }
        format.json { render json: @blogpost.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /blogposts/1
  # DELETE /blogposts/1.json
  def destroy
    @blogpost.destroy
    respond_to do |format|
      format.html { redirect_to blogposts_url, notice: 'Blogpost was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
  
  protected

    

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_blogpost
      @blogpost = Blogpost.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def blogpost_params
      params.require(:blogpost).permit(:title, :body, :all_tags)
    end
    

end
