class TopicsController < ApplicationController
  def index
    @topics = Topic.all
  end

  def get_categories
    @topic_id = params[:id] 
    render json: Category.find_by_topic_id(@topic_id)
  end
end
