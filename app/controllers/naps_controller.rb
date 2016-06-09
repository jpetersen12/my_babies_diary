class NapsController < ApplicationController

  def index
    @naps = Nap.all
  end

  def show
    @nap = Nap.find(params[:id])
  end

  def new
    @nap = Nap.new
  end

  def create
    @nap = Nap.new
    @nap.infant_id = params[:infant_id]
    @nap.note = params[:note]
    @nap.length_hours = params[:length_hours]
    @nap.length_minutes = params[:length_minutes]
    @nap.date = Chronic.parse(params[:date])
    @nap.time = params[:time]

    if @nap.save
      redirect_to "/infants/#{@nap.infant_id}", :notice => "Nap created successfully."
    else
      render 'new'
    end
  end

  def edit
    @nap = Nap.find(params[:id])
  end

  def update
    @nap = Nap.find(params[:id])

    @nap.infant_id = params[:infant_id]
    @nap.note = params[:note]
    @nap.length_hours = params[:length_hours]
    @nap.length_minutes = params[:length_minutes]
    @nap.date = Chronic.parse(params[:date])
    @nap.time = params[:time]

    if @nap.save
      redirect_to "/infants/#{@nap.infant_id}", :notice => "Nap updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @nap = Nap.find(params[:id])
    @infant = @nap.infant_id

    @nap.destroy

    redirect_to "/infants/#{@infant}", :notice => "Nap deleted."
  end
end
