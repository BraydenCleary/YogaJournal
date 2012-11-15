class MeditationPostsController < ApplicationController
  # GET /meditation_posts
  # GET /meditation_posts.json
  def index
    @meditation_posts = MeditationPost.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @meditation_posts }
    end
  end

  # GET /meditation_posts/1
  # GET /meditation_posts/1.json
  def show
    @meditation_post = MeditationPost.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @meditation_post }
    end
  end

  # GET /meditation_posts/new
  # GET /meditation_posts/new.json
  def new
    @meditation_post = MeditationPost.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @meditation_post }
    end
  end

  # GET /meditation_posts/1/edit
  def edit
    @meditation_post = MeditationPost.find(params[:id])
  end

  # POST /meditation_posts
  # POST /meditation_posts.json
  def create
    @meditation_post = MeditationPost.new(params[:meditation_post])
    @meditation_post.user_id = session[:user_id]

    respond_to do |format|
      if @meditation_post.save
        format.html { redirect_to @meditation_post, notice: 'Meditation post was successfully created.' }
        format.json { render json: @meditation_post, status: :created, location: @meditation_post }
      else
        format.html { render action: "new" }
        format.json { render json: @meditation_post.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /meditation_posts/1
  # PUT /meditation_posts/1.json
  def update
    @meditation_post = MeditationPost.find(params[:id])

    respond_to do |format|
      if @meditation_post.update_attributes(params[:meditation_post])
        format.html { redirect_to @meditation_post, notice: 'Meditation post was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @meditation_post.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /meditation_posts/1
  # DELETE /meditation_posts/1.json
  def destroy
    @meditation_post = MeditationPost.find(params[:id])
    @meditation_post.destroy

    respond_to do |format|
      format.html { redirect_to meditation_posts_url }
      format.json { head :no_content }
    end
  end
end
