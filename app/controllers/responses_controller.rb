class ResponsesController < ApplicationController

  def create
    @response = Response.new(params[:response])
    if @response.save
      redirect_to [@response.question.survey, @response.question]
    else
      redirect_to root_path
    end
  end

  def show
    @response = Response.find(params[:id])
  end



end
