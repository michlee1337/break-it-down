class GuidesController < ApplicationController
  def new
  end

  def create
  end

  def update
  end

  def edit
  end

  def destroy
  end

  def show
  end

  def index
  end

  private

  def guide_params
    params.require(:guide).permit(:title, :description,
      chunk_attributes: [:id, :_destroy, :title, :description,
        blocks_attributes: [:id, :_destroy, :name, :description]
      ])
  end

end
