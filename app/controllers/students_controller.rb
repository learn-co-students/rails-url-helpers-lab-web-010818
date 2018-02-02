
class StudentsController < ApplicationController
  before_action :set_student, only: [:show, :update, :edit, :activate]

  def index
    @students = Student.all
  end

  def show
  end

  def activate
    if @student.active
      @student.active = false
      @student.save
    else
      @student.active = true
      @student.save
    end
    redirect_to student_path
  end

  def update
    if !params["student"].nil? #Student params exist
      @student.update(params["student"])
    end

    if !params["activate"].empty? #activate param exists

      if params["activate"] == "activate"
        @student.update(active: true)
      else
        @student.update(active: false)
      end
    end
    render :show
  end

  def edit

  end

  private

  def set_student
    @student = Student.find(params[:id])
  end
end
