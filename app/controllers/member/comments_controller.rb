class Member::CommentsController < ApplicationController
  before_action :set_member_comment, only: [:show, :edit, :update, :destroy]

  # GET /member/comments
  # GET /member/comments.json
  def index
    @member_comments = Member::Comment.all
  end

  # GET /member/comments/1
  # GET /member/comments/1.json
  def show
  end

  # GET /member/comments/new
  def new
    @member_comment = Member::Comment.new
  byebug
  end

  # GET /member/comments/1/edit
  def edit
  end

  # POST /member/comments
  # POST /member/comments.json
  def create
    @member_comment = Member::Comment.new(member_comment_params)

    respond_to do |format|
      if @member_comment.save
        format.html { redirect_to @member_comment, notice: 'Comment was successfully created.' }
        format.json { render :show, status: :created, location: @member_comment }
      else
        format.html { render :new }
        format.json { render json: @member_comment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /member/comments/1
  # PATCH/PUT /member/comments/1.json
  def update
    respond_to do |format|
      if @member_comment.update(member_comment_params)
        format.html { redirect_to @member_comment, notice: 'Comment was successfully updated.' }
        format.json { render :show, status: :ok, location: @member_comment }
      else
        format.html { render :edit }
        format.json { render json: @member_comment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /member/comments/1
  # DELETE /member/comments/1.json
  def destroy
    @member_comment.destroy
    respond_to do |format|
      format.html { redirect_to member_comments_url, notice: 'Comment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_member_comment
      byebug
      @member_comment = Member::Comment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def member_comment_params
      params.require(:member_comment).permit(:title,:video_id)
    end
end
