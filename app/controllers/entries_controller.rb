class EntriesController < ApplicationController
  def index
    @entries = Entry.all
  end

  def show
    @entry = Entry.find(params[:id])
  end

  def new
    @entry = Entry.new
  end

  def create
    @entry = Entry.new
    @entry.word = params[:entry][:word]
    @entry.definition = params[:entry][:defintion]
    @entry.language = params[:entry][:language]
    if @entry.save
      redirect_to entries_url
    else
      redirect_to entries_url
    end
  end

  def edit
    @entry = Entry.find(params[:id])
    redirect_to entries_path
  end


  def update
    @entry = Entry.find(params[:id])
    # @entry.word = params[:entry][:word]
    # @entry.definition = params[:entry][:definition]
    # @entry.language = params[:entry][:language]
    # @entry.location = params[:entry][:city]

    if @entry.save
      redirect_to event_url(params[:id])
    # else
    #   redirect_to event_url(params[:id])
    end
  end

  def destroy
    @entry = Entry.find(params[:id])
    @entry.destroy
    redirect_to entries_path
  end


#<Entry id: 1, word: "absolute music", definition: "instrumental music not intended to represent or il...", language: "en",
# created_at: "2017-11-22 03:04:07", updated_at: "2017-11-22 03:04:07">

end
