class TicketsController < ApplicationController
  before_action :set_column, only: %i[ new create ]

  def new
    @ticket = @column.tickets.new
  end

  def create
    @ticket = @column.tickets.create!(ticket_params)

    respond_to do |format|
      format.html { redirect_to @column.board }
    end
  end

  private

  def set_column
    @board = Board.find(params[:board_id])
    @column = Column.find(params[:column_id])
  end

  def ticket_params
    params.require(:ticket).permit(:message)
  end
end