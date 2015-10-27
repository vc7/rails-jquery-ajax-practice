class TopicsController < ApplicationController
  def index
    @topics = Topic.all
  end

  def get_categories
    topic_id = params[:id] 
    topic = Topic.find(topic_id)
    render json: topic.categories
  end
end
