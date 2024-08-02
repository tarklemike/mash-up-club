class IdeasController < ApplicationController
  before_action :set_idea, only: %i[show edit update destroy]

  before_action :authenticate_user!, except: %i[index show]

  def index
    @ideas = Idea.all
  end

  def show; end

  def new
    @idea = Idea.new
  end

  def create
    @idea = current_user.ideas.build(idea_params)
    if @idea.save
      redirect_to @idea, notice: 'Idea was successfully created.'
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit; end

  def update
    if @idea.update(idea_params)
      redirect_to @idea, notice: 'Idea was successfully updated.'
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @idea.destroy
    redirect_to ideas_path, notice: 'Idea was successfully destroyed.'
  end

  private

  def set_idea
    @idea = Idea.find(params[:id])
  end

  def idea_params
    params.require(:idea).permit(:description, :audio)
  end
end
