class UserImagesController < ApplicationController
  def new
    @user_image = UserImage.new
end

def create
  @user_image = UserImage.new(user_image_params)
  @user_image.user_id = current_user.id
  @user_image.save
  redirect_to book_path
end

def index
  @user_images = UserImage.all
end

def show
end

def destroy
end

def user_image_params
  params.require(:post_image).permit(:image, :caption)
end


end
