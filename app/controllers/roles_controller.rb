class RolesController < ApplicationController
  before_action :authenticate_user!

  def update
  end

  def create
    @role = Role.new(role_params)

    respond_to do |format|
      if @role.save && current_user.add_role(@role.name)
        format.html { redirect_to products_url, notice: 'Role was successfully created.' }
        format.json { render :show, status: :created, location: @role }
      else
        format.html { render :new }
        format.json { render json: @role.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    respond_to do |format|
      if current_user.remove_role(Role.find(params[:id]).name)
        format.html { redirect_to products_url, notice: 'roles was successfully destroyed.' }
        format.json { head :no_content }
      end
    end
  end

  def index
  end

  def edit
  end

  def show
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_role
    @role = Role.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def role_params
    params.require(:role).permit(:name)
  end

end
