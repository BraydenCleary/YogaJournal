class YogaPostsController < ApplicationController
  # GET /yoga_posts
  # GET /yoga_posts.json
  def index
    @yoga_posts = YogaPost.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @yoga_posts }
    end
  end

  # GET /yoga_posts/1
  # GET /yoga_posts/1.json
  def show
    @yoga_post = YogaPost.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @yoga_post }
    end
  end

  # GET /yoga_posts/new
  # GET /yoga_posts/new.json
  def new
    @yoga_post = YogaPost.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @yoga_post }
    end
  end

  # GET /yoga_posts/1/edit
  def edit
    @yoga_post = YogaPost.find(params[:id])
  end

  # POST /yoga_posts
  # POST /yoga_posts.json
  def create
    @yoga_post = YogaPost.new(params[:yoga_post])
    @yoga_post.user_id = session[:user_id]

    respond_to do |format|
      if @yoga_post.save
        format.html { redirect_to @yoga_post, notice: 'Yoga post was successfully created.' }
        format.json { render json: @yoga_post, status: :created, location: @yoga_post }
      else
        format.html { render action: "new" }
        format.json { render json: @yoga_post.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /yoga_posts/1
  # PUT /yoga_posts/1.json
  def update
    @yoga_post = YogaPost.find(params[:id])

    respond_to do |format|
      if @yoga_post.update_attributes(params[:yoga_post])
        format.html { redirect_to @yoga_post, notice: 'Yoga post was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @yoga_post.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /yoga_posts/1
  # DELETE /yoga_posts/1.json
  def destroy
    @yoga_post = YogaPost.find(params[:id])
    @yoga_post.destroy

    respond_to do |format|
      format.html { redirect_to yoga_posts_url }
      format.json { head :no_content }
    end
  end
end
