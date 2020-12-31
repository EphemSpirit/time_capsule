class TopicsController < ApplicationController

  def create
    @topic = @topicable.topics.new(topic_params)
    @topic.save
    redirect_to dashboard_path
  end

  private

    def topic_params
      params.require(:topic).permit(:content)
    end

end
