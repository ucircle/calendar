class EventsController < ApplicationController
  def index
    @events = Event.all
    @event = Event.new
  end

  def show
    @event = Event.find(params[:id])
  end

  def new
    @event = Event.new
  end

  def edit
    @event = Event.find(params[:id])
  end

  def create
    @events = Event.all
    @event = Event.new(event_params)
    @event.color = params[:event][:color]

    if @event.save
      redirect_to events_path, notice: "イベントを作成しました"
    else
      flash.now[:notice] = "イベント名を入力してください"
      render 'events/index'
    end
  end


  def destroy
   @event = Event.find(params[:id])
   @event.destroy
   redirect_to events_path, notice:"削除しました"
  end



  private

  def event_params
    params.require(:event).permit(:title, :content, :start_time, :color, :image)
  end


end
