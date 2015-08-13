class TRedditsController < ApplicationController
  before_action :set_t_reddit, only: [:show, :edit, :update, :destroy]

  # GET /t_reddits
  # GET /t_reddits.json
  def index
    @t_reddits = TReddit.all
  end

  # GET /t_reddits/1
  # GET /t_reddits/1.json
  def show
  end

  # GET /t_reddits/new
  def new
    @t_reddit = TReddit.new
  end

  # GET /t_reddits/1/edit
  def edit
  end

  # POST /t_reddits
  # POST /t_reddits.json
  def create
    @t_reddit = TReddit.new(t_reddit_params)

    respond_to do |format|
      if @t_reddit.save
        format.html { redirect_to @t_reddit, notice: 'T reddit was successfully created.' }
        format.json { render :show, status: :created, location: @t_reddit }
      else
        format.html { render :new }
        format.json { render json: @t_reddit.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /t_reddits/1
  # PATCH/PUT /t_reddits/1.json
  def update
    respond_to do |format|
      if @t_reddit.update(t_reddit_params)
        format.html { redirect_to @t_reddit, notice: 'T reddit was successfully updated.' }
        format.json { render :show, status: :ok, location: @t_reddit }
      else
        format.html { render :edit }
        format.json { render json: @t_reddit.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /t_reddits/1
  # DELETE /t_reddits/1.json
  def destroy
    @t_reddit.destroy
    respond_to do |format|
      format.html { redirect_to t_reddits_url, notice: 'T reddit was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_t_reddit
      @t_reddit = TReddit.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def t_reddit_params
      params.require(:t_reddit).permit(:title, :author, :blog_entry)
    end
end
