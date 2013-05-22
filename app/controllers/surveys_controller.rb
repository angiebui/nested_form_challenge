class SurveysController < ApplicationController
  def index
  end

  def new
    @survey = Survey.new
    @survey.questions.build

    @survey.questions.each do |question|
      question.options.build
    end

  end

  def create
    @survey = Survey.new(params[:survey])

    if @survey.save
      redirect_to @survey
    else
      render "new"
    end
  end

  def show
    @survey = Survey.find(params[:id])
    @response = Response.new
  end

end
