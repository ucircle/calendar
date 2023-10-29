class EventsController < ApplicationController
  def index
    @events = Event.all
    @event = Event.new
  end

  def new
    @event = Event.new
  end

  def show
    @event = Event.find(params[:id])
  end

  def create
    @event = Event.new(event_params)
    @event.color = params[:event][:color]

    if @event.save
    redirect_to events_path
    else
      render 'new'
    end
  end

  def destroy
   @event = Event.find(params[:id])
   @event.destroy
   redirect_to events_path, notice:"削除しました"
  end

  def edit
    @event = Event.find(params[:id])
  end

  def update
    @event = Event.find(params[:id])
    if @event.update(event_parameter)
      redirect_to events_path, notice: "編集しました"
    else
      render 'edit'
    end
  end



  private

  def event_params
    params.require(:event).permit(:title, :content, :start_time, :color, :image)
  end


end
