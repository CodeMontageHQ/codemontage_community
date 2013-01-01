class CodersController < ApplicationController
  def new
    @coder = Coder.new
  end
  def create
    @coder = Coder.new(params[:coder])
    if @coder.save
      redirect_to root_url, notice: 'Thank you for creating an account.'
    else
      render 'new'
    end
  end
end
