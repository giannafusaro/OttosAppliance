class InvoicesController < ApplicationController

  def index
    @invoices = Invoice.all
  end

  def new
    @invoice = Invoice.new
  end

  def create
    @invoice = Invoice.new invoice_params

    if @invoice.save
      flash[:success] = "You have successfully saved an invoice!"
      redirect_to invoices_path
    else
      render :new
    end

  end

  def edit
    @invoice = Invoice.find (params[:id])
  end

  def update
    @invoice = Invoice.find params[:id]
    if @invoice.update_attributes(invoice_params)
      flash[:success] = "Invoice updated successfully!"
      redirect_to invoices_path
    else
      render :edit
    end
  end

  def search
  end

  def destroy
    @invoice = Invoice.find(params[:id]).destroy
    flash[:success] = "Invoice destroyed successfully."
    redirect_to invoices_path
  end

  private

    def invoice_params
      params.require(:invoice).permit(:date, :invoice_number, :make, :model,
        :serial_number, :street, :city, :state, :zip, :request, :description,
        :remarks, :parts, :tax, :service_call, :labor, :total)
    end
end
