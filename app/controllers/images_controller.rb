class ImagesController < ApplicationController
  def index
  end

  def new
  	@image = Image.new
  end

  def create
  	@image = Image.new(secure_params)
  	@image.save
  	redirect_to imagenes_path
  end

  private
  def secure_params
  	params.require(:image).permit :name,:description, :categoy,:tags
  end
end
