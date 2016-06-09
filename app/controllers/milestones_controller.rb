class MilestonesController < ApplicationController
  def index
    @milestones = Milestone.all
  end

  def show
    @milestone = Milestone.find(params[:id])
  end

  def new
    @milestone = Milestone.new
  end

  def create
    @milestone = Milestone.new
    @milestone.infant_id = params[:infant_id]
    @milestone.photo = params[:photo]
    @milestone.date = params[:date]
    @milestone.description = params[:description]

    if @milestone.save
      redirect_to "/infants/#{@milestone.infant_id}", :notice => "Milestone created successfully."
    else
      render 'new'
    end
  end

  def edit
    @milestone = Milestone.find(params[:id])
  end

  def update
    @milestone = Milestone.find(params[:id])

    @milestone.infant_id = params[:infant_id]
    @milestone.photo = params[:photo]
    @milestone.date = params[:date]
    @milestone.description = params[:description]

    if @milestone.save
      redirect_to "/infants/#{@milestone.infant_id}", :notice => "Milestone updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @milestone = Milestone.find(params[:id])
    @infant = @mileston.infant_id

    @milestone.destroy

    redirect_to "/infants/#{@infant}", :notice => "Milestone deleted."
  end
end
