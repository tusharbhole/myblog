class ArticalsController < ApplicationController
  before_action :set_artical, only: [:show, :edit, :update, :destroy]

  # GET /articals
  # GET /articals.json
  def index
    @articals = Artical.all
  end

  # GET /articals/1
  # GET /articals/1.json
  def show
    @artical = Artical.find(params[:id])
  end

  # GET /articals/new
  def new
    @artical = Artical.new
  end

  # GET /articals/1/edit
  def edit
  end

  # POST /articals
  # POST /articals.json
  def create
    @artical = Artical.new(artical_params)
    @artical.user = current_user
    if @artical.save
      flash[:notice] = "Article was created successfully."
      redirect_to @artical
    else
      render 'new'
    end
  end

  def update
    if @artical.update(artical_params)
      flash[:notice] = "Article was updated successfully."
      redirect_to @artical
    else
      render 'edit'
    end
  end

  # DELETE /articals/1
  # DELETE /articals/1.json
  def destroy
    @artical.destroy
    redirect_to articals_path
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_artical
      @artical = Artical.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def artical_params
      params.require(:artical).permit(:title, :description)
    end
end
