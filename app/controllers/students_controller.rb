class StudentsController < ApplicationController

  def show
    @student = Student.find(params[:id])
  end

  def new
    @student = Student.new
  end

  def edit
    @student = Student.find(params[:id])
  end

  def create
    @student = Student.new(student_parmas}
    @student.save
    redirect_to student_path(@student)
  end

  def update
    @student = Student.find(params[:id])
    @studnet.update(student_params)
    redirect_to student_path(@student)
  end

  private 
  def student_params
   params.require(:student).permit!
  end
end
