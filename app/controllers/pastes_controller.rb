class PastesController < ApplicationController
  before_action :set_paste, only: [:show, :edit, :update, :destroy]

  respond_to :html, :csv

  def index
    @pastes = Paste.all
    respond_with(@pastes)
  end

  def show
    respond_to do |format|
      format.html
      format.csv { send_data @paste.to_csv, filename: "#{@paste.title}.csv" }
      format.xls { send_data @paste.xls, filename: "#{@paste.title}.xls"}
    end
  end

  def new
    @paste = Paste.new
    respond_with(@paste)
  end

  def edit
  end

  def create
    @paste = Paste.new(paste_params)
    @paste.save
    respond_with(@paste)
  end

  def update
    @paste.update(paste_params)
    respond_with(@paste)
  end

  def destroy
    @paste.destroy
    respond_with(@paste)
  end

  private
    def set_paste
      @paste = Paste.find_by(uuid: params[:id])
    end

    def paste_params
      params.require(:paste).permit(:body, :title)
    end
end
