class PicturesController < ApplicationController
  def index
    @pictures = current_user.pictures.all
  end

  def new
    @picture = current_user.pictures.build
  end

  def create
    @picture = current_user.pictures.build(picture_params)

    if @picture.save
      flash[:notice] = "Picture uploaded successfully!"
      redirect_ to @photo
    else
      render 'new'
    end
  end

  def destroy
    @picture = Picture.find(params[:picture_id])
    redirect_to dashboard_path
  end
end
