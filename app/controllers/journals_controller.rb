class JournalsController < ApplicationController
  before_action :find_journal, only: [:destroy]

  def new
    @journal = Journal.new
  end

  def create
    @journal = current_user.entries.build(journal_params)
  end

  def destroy
    @journal.destroy
    flash[:notice] = "Entry successfully deleted"
    redirect_to user_journals_path
  end

  private

    def find_journal
      @journal = Journal.find(params[:journal_id])
    end

    def journal_params
      params.require(:journal).permit(:title, :description)
    end
end
