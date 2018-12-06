class EntryPostsController < ApplicationController
  before_action :set_entry_post, only: [:show, :edit, :update, :destroy]

  # GET /entry_posts
  # GET /entry_posts.json
  def index
    @entry_posts = EntryPost.all
  end

  # GET /entry_posts/1
  # GET /entry_posts/1.json
  def show
  end

  # GET /entry_posts/new
  def new
    @entry_post = EntryPost.new
  end

  # GET /entry_posts/1/edit
  def edit
  end

  # POST /entry_posts
  # POST /entry_posts.json
  def create
    @entry_post = EntryPost.new(entry_post_params)

    respond_to do |format|
      if @entry_post.save
        format.html { redirect_to @entry_post, notice: 'Entry post was successfully created.' }
        format.json { render :show, status: :created, location: @entry_post }
      else
        format.html { render :new }
        format.json { render json: @entry_post.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /entry_posts/1
  # PATCH/PUT /entry_posts/1.json
  def update
    respond_to do |format|
      if @entry_post.update(entry_post_params)
        format.html { redirect_to @entry_post, notice: 'Entry post was successfully updated.' }
        format.json { render :show, status: :ok, location: @entry_post }
      else
        format.html { render :edit }
        format.json { render json: @entry_post.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /entry_posts/1
  # DELETE /entry_posts/1.json
  def destroy
    @entry_post.destroy
    respond_to do |format|
      format.html { redirect_to entry_posts_url, notice: 'Entry post was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_entry_post
      @entry_post = EntryPost.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def entry_post_params
      params.require(:entry_post).permit(:transaksi, :last_num, :format_key)
    end
end
