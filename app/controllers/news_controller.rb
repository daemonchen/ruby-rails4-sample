class NewsController < ApplicationController
  def index
    behavior_record = { "title" => "create new at #{Time.now}", "content" => "new's content create at #{Time.now}"}

    behavior_record[:createTime] = Time.now.to_i*1000
    New.create behavior_record
    respond_to do |format|
      format.json { render json: {"data" => New.all.to_json }, :status =>200 }
    end
  end

  def behavior_params
    [:title, :content].each {|key| params.require(key)}

    params.permit(:title, :content)
  end
end
