class InvoicesController < ApplicationController

  def index
    @invoices = Invoice.all
  end

  def new
    @invoice = Invoice.new
  end

  def create
    @invoice = Invoice.create invoice_params
  end

  def search
  end

  def destroy
    @invoice = Invoice.find(params[:id]).destroy
    flash[:success] = "Invoice destroyed successfully."
    redirect_to invoice_path
  end

  private

    def invoice_params
      params.require(:invoice).permit(:date, :invoice_number, :make, :model,
        :serial_number, :street, :city, :state, :zip, :request, :description,
        :remarks, :parts, :tax, :service_call, :labor, :total)
    end
end
