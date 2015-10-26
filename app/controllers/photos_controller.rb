class PhotosController < ApplicationController
  def index
    @list_of_photos = Photo.all
  end

  def show
    @photo_id = params[:id].to_i
    @photo_source = Photo.find(@photo_id).source
    @photo_caption = Photo.find(@photo_id).caption
  end

  def new_form

  end

  def create_row
    i = Photo.new
    i.source = params[:the_source]
    i.caption = params[:the_caption]
    i.save

    redirect_to("http://localhost:3000/photos")
  end

  def destroy
    @photo_id = params[:id].to_i
    i = Photo.find(@photo_id)
    i.destroy

    redirect_to("http://localhost:3000/photos")
  end

  def edit_form
    @photo_id = params[:id].to_i
    @photo_source = Photo.find(@photo_id).source
    @photo_caption = Photo.find(@photo_id).caption
  end

  def update_row
    @photo_id = params[:id].to_i
    i = Photo.find(@photo_id)
    i.source = params[:the_source]
    i.caption = params[:the_caption]
    i.save

    redirect_to("http://localhost:3000/photos")
  end

end

