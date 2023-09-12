class CalculatorController < ApplicationController
  def index
  end

  def calculate
    case params[:operator]
    when '+'
      @result = params[:num1].to_f + params[:num2].to_f
    when '-'
      @result = params[:num1].to_f - params[:num2].to_f
    when '*'
      @result = params[:num1].to_f * params[:num2].to_f
    when '/'
      @result = params[:num1].to_f / params[:num2].to_f
    else
      @result = "Invalid operator"
    end
    render 'index'
  end
end
