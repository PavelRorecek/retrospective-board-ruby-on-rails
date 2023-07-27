class ColumnsController < ApplicationController
  before_action :set_column, only: %i[ show ]

  def show
  end

  private

  def set_column
    @column = Column.find(params[:id])
  end
end