class RoutinesController < ApplicationController

def show
  @routine = Routine.find_by(id: params[:id])
  render :show
end

def update
  @routine = Routine.find_by(id: params[:id])
  @routine.update(
    exercise_id: params[:exercise_id] || routine.exercise_id,
    reps: params[:reps] || routine.reps
  )
  render :show
end

end
