class ReservationsController < ApplicationController
  def index
    @reservation = Reservation.all
  end
  
  def create
    @reservation = Reservation.new(params.require(:reservation).permit(:start_day, :end_day, :person_number, :sum_price, :user_id, :room_id))
    if @reservation.save!
      flash[:notice]="予約が完了しました"
      redirect_to reservations_path
    else
      flash[:notice]="予約に失敗しました"
      render "new"
    end
  end

  def show
    
  end

  def new
    @room = Room.find(params[:format])
    @reservation = Reservation.new
  end

  
end
