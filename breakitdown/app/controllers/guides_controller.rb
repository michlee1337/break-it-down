class GuidesController < ApplicationController
  def new
    @guide = Guide.new
  end

  def create
    @guide = Guide.new(guide_params)

    if @guide.save
      redirect_to(@guide, :notice => 'Project was successfully created.')
    else
      render :action => "new"
    end
  end

  def update
  end

  def edit
  end

  def destroy
    @guide = Guide.find(params[:id])
    @guide.destroy

    respond_to do |format|
      format.html { redirect_to(guides_url) }
      format.xml  { head :ok }
    end
  end

  def show
    @guide = Guide.find(params[:id])

  end

  def index
    @guides = Guide.all
  end

  private

  def guide_params
    params.require(:guide).permit(:title, :description,
      chunks_attributes: [:id, :_destroy, :title, :description,
        blocks_attributes: [:id, :_destroy, :title, :description]
      ])
  end

end
