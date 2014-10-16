class CustomersController < ApplicationController

  def index
    @customers = Customer.all
  end

  def new
    @customer = Customer.new
  end

  def create
    @customer = Customer.new customer_params

    if @customer.save
      flash[:success] = "Customer created successfully!"
      redirect_to customers_path
    else
      render :new
    end

  end

  def edit
    @customer = Customer.find(params[:id])
  end

  def update
    @customer = Customer.find params[:id]
    if @customer.update_attributes(customer_params)
      flash[:success] = "Customer updated successfully!"
      redirect_to customers_path
    else
      render :edit
    end
  end

  def destroy
    @customer = Customer.find(params[:id]).destroy
    flash[:success] = "Customer destroyed successfully."
    redirect_to customers_path
  end

private

  def customer_params
    params.require(:customer).permit(:last_name, :first_name, :street_address, :city,
      :zip_code, :phone, :notes)
  end

end
