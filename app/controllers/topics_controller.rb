class TopicsController < ApplicationController
  def index
    @topics = Topic.all
  end

  def get_categories
    @topic_id = params[:id] 
    render json: Topic.all 
  end
end
