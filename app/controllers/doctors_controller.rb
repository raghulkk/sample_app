class DoctorsController < ApplicationController
  def index
    @doctors = Doctor.all
    #render json: @doctors.map{|elem| elem.attributes}

  end

  def new
  end

 def update
    @doctor = Doctor.find(params[:id])
    @doctor.update(name: params[:name], department: params[:department])
    redirect_to doctor_path(@doctor)
  end

  def destroy
     @doctor = Doctor.destroy(params[:id])
    redirect_to doctors_path(@doctor)
  end

  def edit
    @doctor = Doctor.where(id: params[:id]).first
  end

  def show
    @doctor = Doctor.where(id: params[:id]).first
  end

  def search
     @doctor = Doctor.where("name ILIKE ? or department ILIKE ?", params[:query], params[:query] )
     render "index"
  end


  def create
    @doctor = Doctor.create(name: params[:Name], department: params[:department])
    render "show"
  end


end
