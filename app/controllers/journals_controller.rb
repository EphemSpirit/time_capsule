class JournalsController < ApplicationController
  before_action :find_journal, only: [:show, :destroy]

  def index
    @journals = current_user.entries
  end

  def new
    @journal = Journal.new
  end

  def create
    @journal = current_user.entries.build(journal_params)

    if @journal.save
      redirect_to root_path
      flash[:notice] = "Journal entry saved!"
    else
      render 'new'
      flash[:notice] = "Something went wrong"
    end
  end

  def show

  end

  def destroy
    @journal.destroy
    flash[:notice] = "Entry successfully deleted"
    redirect_to user_journals_path
  end

  private

    def find_journal
      @journal = Journal.find(params[:id])
    end

    def journal_params
      params.require(:journal).permit(:title, :body, :tags)
    end
end
