class StudentsController < ApplicationController

  def index
    students = 
    if params[:name]
      Student.all.select {|student| student.last_name == params[:name].capitalize || student.first_name == params[:name].capitalize}
    else
      Student.all
    end
    render json: students
  end

  def show
    student = Student.find(params[:id])
    render json: student
  end

end
