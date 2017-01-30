class SurfboardsController < ApplicationController
  def index
    @surfboards = Surfboard.all 
    render "index.html.erb"
  end

  def new
    render "new.html.erb"
  end

  def create
    @surfboard = Surfboard.new(shaper: params[:shaper], length: params[:length])
    @surfboard.save

    redirect_to "/surfboards/#{@surfboard.id}"
  end

  def show
    @surfboard = Surfboard.find_by(id: params[:id])
    render "show.html.erb"
  end 

  def edit
    @surfboard = Surfboard.find_by(id: params[:id])
    render "edit.html.erb"
  end

  def update
    @surfboard = Surfboard.find_by(id: params[:id])
    @surfboard.assign_attributes(shaper: params[:shaper], length: params[:length])
    @surfboard.save
    redirect_to "/surfboards/#{@surfboard.id}"
  end

  def destroy
    @surfboard = Surfboard.find_by(id: params[:id])
    @surfboard.delete
    redirect_to "/surfboards"
  end

end
