class StudentsController < ApplicationController

  def index
    @students = Student.order(:last_name)
    @teacher = Teacher.find_by(id: session[:user_id])
  end


  def new
    @team = team.new
  end

  def import
    Student.import(params[:file])
    redirect_to root_url, notice: "CSV file has been imported"
  end

  def create
  end

   def update
    @teacher = Teacher.find_by(id: session[:teacher_id])
    @student = Student.find_by(id: params[:id])
    if @teacher.students.count < 12
      @student.update_attributes(teacher_id: @teacher.id)
      redirect_to @teacher
    else
      @draft_error = "Can't have more than 12 students on a team"
      redirect_to students_path
    end
  end

  def destroy
    # student = student.find(params[:id])
    # student.destroy
    # redirect_to teams_url
  end

  private
  def game_params
    # params.require(:team).permit(:user_throw)
  end
end
