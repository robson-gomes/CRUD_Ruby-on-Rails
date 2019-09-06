class BlogLegalsController < ApplicationController
  before_action :set_blog_legal, only: [:show, :edit, :update, :destroy]

  # GET /blog_legals
  # GET /blog_legals.json
  def index
    @blog_legals = BlogLegal.all
  end

  # GET /blog_legals/1
  # GET /blog_legals/1.json
  def show
  end

  # GET /blog_legals/new
  def new
    @blog_legal = BlogLegal.new
  end

  # GET /blog_legals/1/edit
  def edit
  end

  # POST /blog_legals
  # POST /blog_legals.json
  def create
    @blog_legal = BlogLegal.new(blog_legal_params)

    respond_to do |format|
      if @blog_legal.save
        format.html { redirect_to @blog_legal, notice: 'Blog legal was successfully created.' }
        format.json { render :show, status: :created, location: @blog_legal }
      else
        format.html { render :new }
        format.json { render json: @blog_legal.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /blog_legals/1
  # PATCH/PUT /blog_legals/1.json
  def update
    respond_to do |format|
      if @blog_legal.update(blog_legal_params)
        format.html { redirect_to @blog_legal, notice: 'Blog legal was successfully updated.' }
        format.json { render :show, status: :ok, location: @blog_legal }
      else
        format.html { render :edit }
        format.json { render json: @blog_legal.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /blog_legals/1
  # DELETE /blog_legals/1.json
  def destroy
    @blog_legal.destroy
    respond_to do |format|
      format.html { redirect_to blog_legals_url, notice: 'Blog legal was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_blog_legal
      @blog_legal = BlogLegal.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def blog_legal_params
      params.require(:blog_legal).permit(:titulo, :text)
    end
end
