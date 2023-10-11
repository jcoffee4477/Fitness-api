class RoutinesController < ApplicationController
before_action :authenticate_user

def index 
  @routines = current_user.routines
  render :index
end

def show
  @routine = Routine.find_by(id: params[:id])
  render :show
end

def update
  @routine = Routine.find_by(id: params[:id])
  @routine.update(
    name: params[:name] || @routine.name,
    description: params[:description] || @routine.description,
    image_url: params[:image_url] || @routine.image_url,
    video_url: params[:video_url] || @routine.video_url,
    user_id: params[:user_id] || @routine.user_id
  )
  render :show
end

def create
  @routine = Routine.create(
    name: params[:name],
    description: params[:description],
    image_url: params[:image_url],
    video_url: params[:video_url],
    user_id: current_user.id
  )
  render :show
end

def destroy
  @routine = Routine.find_by(id: params[:id])
  @routine.destroy
  render json: {message:"removed"}
end

end
