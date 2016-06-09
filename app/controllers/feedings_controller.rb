class FeedingsController < ApplicationController
  def index
    @feedings = Feeding.all
  end

  def show
    @feeding = Feeding.find(params[:id])
  end

  def new
    @feeding = Feeding.new
  end

  def create
    @feeding = Feeding.new
    @feeding.infant_id = params[:infant_id]
    @feeding.note = params[:note]
    @feeding.amount = params[:amount]
    @feeding.date = params[:date]
    @feeding.time = params[:time]

    if @feeding.save
      redirect_to "/infants/#{@feeding.infant_id}", :notice => "Feeding created successfully."
    else
      render 'new'
    end
  end

  def edit
    @feeding = Feeding.find(params[:id])
  end

  def update
    @feeding = Feeding.find(params[:id])

    @feeding.infant_id = params[:infant_id]
    @feeding.note = params[:note]
    @feeding.amount = params[:amount]
    @feeding.date = params[:date]
    @feeding.time = params[:time]

    if @feeding.save
      redirect_to "/infants/#{@feeding.infant_id}", :notice => "Feeding updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @feeding = Feeding.find(params[:id])
    @infant = @feeding.infant_id

    @feeding.destroy

    redirect_to "/infants/#{@infant}", :notice => "Feeding deleted."
  end
end
