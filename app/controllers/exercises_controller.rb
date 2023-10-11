class ExercisesController < ApplicationController

def index
  @exercises = Exercise.all 
  render :index
end

def show
  @exercise = Exercise.find_by(id: params[:id])
  render :show
end

def update
  @exercise = Exercise.find_by(id: params[:id])
  @exercise.update(
    name: params[:name] || @exercise.name,
    reps: params[:reps] || @exercise.reps,
    sets: params[:sets] || @exercise.sets,
    description: params[:description] || @exercise.description,
    routine_id: params[:routine_id] || @exercise.routine_id,
    user_id: params[:user_id] || @exercise.user_id,
    resistance: params[:resistance] || @exercise.resistance,
    image_url: params[:image_url] || @exercise.image_url
  )
  render :show
end

def create
  @exercise = Exercise.create(
    name: params[:name],
    reps: params[:reps],
    sets: params[:sets],
    routine_id: params[:routine_id],
    user_id: params[:user_id],
    description: params[:description],
    resistance: params[:resistance],
    image_url: params[:image_url]
  )
  render :show
end

def destroy
  @exercise = Exercise.find_by(id: params[:id])
  @exercise.destroy
  render :show
end

def delete_routine_from_exercise
  @exercise = Exercise.find_by(id: params[:id])
  @exercise.routine_id = nil
  @exercise.save
end

end
