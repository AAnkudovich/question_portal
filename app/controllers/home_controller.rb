class HomeController < ApplicationController
  def index
    @questions = Question.all

  end

  def pension_calculator; end
end
