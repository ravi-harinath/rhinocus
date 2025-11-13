class ContactMessagesController < ApplicationController
  def new
    @contact = ContactMessage.new
  end

  def create
    @contact = ContactMessage.new(contact_message_params)

    if @contact.save
      redirect_to root_path, notice: "Thanks for contacting us. We will get back to you soon."
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def contact_message_params
    params.require(:contact_message).permit(:name, :email, :phone, :message)
  end
end
