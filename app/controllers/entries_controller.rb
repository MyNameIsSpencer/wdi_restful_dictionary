class EntriesController < ApplicationController
  def index
    render :index
    # @entries = Entry.all
  end

  def show
    @entry = Entry.find(params[:id])
  end


  def new
    render :new
  end

  def created
    redirect_to entries_url
  end

  def edit
    @entry = Entry.find(params[:id])
  end

#<Entry id: 1, word: "absolute music", definition: "instrumental music not intended to represent or il...", language: "en",
# created_at: "2017-11-22 03:04:07", updated_at: "2017-11-22 03:04:07">

end
