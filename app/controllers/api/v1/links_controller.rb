class Api::V1::LinksController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
    @links = Link.where("created_at > ?", Time.now - (24 * 60 * 60)).order(read_count: :desc).limit(10)
    render json: @links
  end

  private
    def link_params
      params.permit(:title, :url)
    end
end
