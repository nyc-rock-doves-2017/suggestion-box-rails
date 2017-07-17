class SuggestionsController < ApplicationController

  def index
    @suggestions = Suggestion.all
  end

  def show
    @suggestion = Suggestion.find_by(id: params[:id])
  end

  def new
    @suggestion = Suggestion.new
  end

  def create
    @suggestion = Suggestion.new(suggestion_params)

    if @suggestion.save
      redirect_to @suggestion
    else
      @errors = @suggestion.errors.full_messages
      render status: 422, action: "new"
    end
  end

  private

  def suggestion_params
    params.require(:suggestion).permit(:title,:body,:author)
  end

end