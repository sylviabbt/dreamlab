class Api::V1::CreatorsController < Api::V1::BaseController
  def index
    @creators = Creator.all.order(created_at: :desc)
  end

  def show
    @creator = Creator.find(params[:id])
    # @collaborations = @creator.collaborations
  end
end
