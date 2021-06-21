class ConfirmationsController < ApplicationController
  def index
  end

  def new
    @confirmation = Confirmation.new
  end

  def create
    @confirmation = Confirmation.new(confirmation_params)
    if @confirmation.valid?
      render :create
    else
      render :new
    end
  end

  private def confirmation_params
    params.require(:confirmation).permit(:tos)
  end

end
