class Member::VideosController < ApplicationController
  before_action :set_member_video, only: [:show, :edit, :update, :destroy]

  # GET /member/videos
  # GET /member/videos.json
  def index
    @member_videos = Member::Video.all
  end

  # GET /member/videos/1
  # GET /member/videos/1.json
  def show
  end

  # GET /member/videos/new
  def new
    @member_video = Member::Video.new
  end

  # GET /member/videos/1/edit
  def edit
  end

  # POST /member/videos
  # POST /member/videos.json
  def create
    @member_video = Member::Video.new(member_video_params)

    respond_to do |format|
      if @member_video.save
        format.html { redirect_to @member_video, notice: 'Video was successfully created.' }
        format.json { render :show, status: :created, location: @member_video }
      else
        format.html { render :new }
        format.json { render json: @member_video.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /member/videos/1
  # PATCH/PUT /member/videos/1.json
  def update
    respond_to do |format|
      if @member_video.update(member_video_params)
        format.html { redirect_to @member_video, notice: 'Video was successfully updated.' }
        format.json { render :show, status: :ok, location: @member_video }
      else
        format.html { render :edit }
        format.json { render json: @member_video.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /member/videos/1
  # DELETE /member/videos/1.json
  def destroy
    @member_video.destroy
    respond_to do |format|
      format.html { redirect_to member_videos_url, notice: 'Video was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_member_video
    @member_video = Member::Video.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def member_video_params
    params.require(:member_video).permit(:comment_id, :name)
  end
end
