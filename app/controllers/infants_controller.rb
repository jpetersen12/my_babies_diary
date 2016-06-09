class InfantsController < ApplicationController
  def index
    @infants = current_user_account.infants
  end

  def show
    @infant = Infant.find(params[:id])
    @nap = Nap.new
    @feeding = Feeding.new
    @milestone = Milestone.new
  end

  def new
    @infant = Infant.new
  end

  def create
    @infant = Infant.new
    @infant.user_account_id = params[:user_account_id]
    @infant.name = params[:name]
    @infant.image = params[:image]

    if @infant.save
      redirect_to "/infants", :notice => "Infant created successfully."
    else
      render 'new'
    end
  end

  def edit
    @infant = Infant.find(params[:id])
  end

  def update
    @infant = Infant.find(params[:id])

    @infant.user_account_id = params[:user_account_id]

    if @infant.save
      redirect_to "/infants", :notice => "Infant updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @infant = Infant.find(params[:id])

    @infant.destroy

    redirect_to "/infants", :notice => "Infant deleted."
  end
end
