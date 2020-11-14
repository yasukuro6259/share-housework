class Users::SessionsController < Devise::SessionsController
  def new_guest
    user = User.guest
    sign_in user # sign_inメソッド :サインインさせることができるメソッド(deviseのメソッド)
    redirect_to root_path
  end
end
