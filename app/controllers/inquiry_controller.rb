class InquiryController < ApplicationController
  def new
    @inquiry = Inquiry.new
  end

  def confirm
    @inquiry = Inquiry.new(inquiry_params)
    if @inquiry.valid?
    else
      render action: 'new'
    end
  end
  
  private
  def inquiry_params
    params.require(:inquiry).permit(:name, :email, :message)
  end

  def thanks
    @inquiry = Inquiry.create(inquiry_params)
  end
end
