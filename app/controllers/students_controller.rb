class StudentsController < ApplicationController

  def index
    # students = Student.all
    # render json: students

    student = Student.all.find_by(last_name: params[:last_name])
    render json: student
  end

  def show 
    student = Student.find(params[:id])
    render json: student
  end
end
