class SessionsController < Devise::SessionsController
  respond_to :html, :js, :json

  def create
    respond_to do |format|
      format.html {
        super
      }
      format.json {
        super
        # byebug
        # @user = User.create(user_params)
        # @user.save ? (render :json => {:state => {:code => 0}, :data => @user }) :
        #     (render :json => {:state => {:code => 1, :messages => @user.errors.full_messages} })
      }
      format.js {
        super
        # byebug
        # @user = User.create(user_params)
        # @user.save ? (render :json => {:state => {:code => 0}, :data => @user }) :
        #     (render :json => {:state => {:code => 1, :messages => @user.errors.full_messages} })
      }
    end
  end

  def new
    # byebug
    super
  end
end