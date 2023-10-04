class ExercisesController < ApplicationController

def index
  @exercises = Exercise.all 
  render :index
end

def show
  @exercise = Exercise.find_by(id: param[:id])
  render show
end

def update
  @exercise = Exercise.find_by(id: params[:id])
  @exercise.update(
    name: params[:name] || @exercise.name,
    reps: params[:reps] || @exercise.reps,
    sets: params[:sets] || @exercise.sets,
    routine_id: params[:routine_id] || @exercise.routine_id,
    user_id: params[:user_id] || @exercise.user_id

  )
  render :show


end

def create
  @exercise = Exercise.create(
    name: params[:name],
    reps: params[:reps],
    sets: params[:sets],
    routine_id: params[:routine_id],
    user_id: params[:user_id]
  )

  render :show
end

end
