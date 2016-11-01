class PhotosController < ApplicationController
  def index
    @list_of_photos = Photo.all
  end

  def show
    @photo = Photo.find_by({ :id => params[:id]})
    @photo_source = @photo.source
    @photo_caption = @photo.caption
    @photo_id = @photo.id
    @photo_id = @photo.id

  end

  def new_form

  end

  def create_row
    @photo = Photo.new
    @photo.caption = params[:the_caption]
    @photo.source = params[:the_url]
    @photo.save

    redirect_to("/photos")
  end

  def delete_photo
    @photo = Photo.find_by({ :id => params[:id]})
    @photo_delete = @photo.destroy

    redirect_to("/photos")

  end

  def edit_form

  end

  def update_row
    @photo = Photo.find_by({ :id => params[:id]})
    @photo.caption = params[ :the_caption]
    @photo.source = params[:the_url]
    @photo.save

    redirect to("/photos/:id")

end
