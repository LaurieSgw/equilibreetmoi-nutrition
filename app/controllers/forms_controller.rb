class FormsController < ApplicationController

  def new
    @form = Form.new
  end

  def create
    @form = Form.new(form_params)
    @form.request = request

    if @form.deliver
      redirect_to prendrerdv_path, notice: "Message envoyé avec succès !"
    else
      flash.now[:alert] = "Une erreur est survenue"
      render :new, status: :unprocessable_entity
    end
  end

  private

  def form_params
    params.require(:form).permit(:name, :email, :phone, :message, :nickname)
  end
end
