class StudentsController < ApplicationController

    def show
        set_student
    end

    def new
        @student = Student.new
    end

    def create
        @student = Student.new(student_params)
        @student.save
        redirect_to student_path(@student)
    end

    def edit
        set_student
    end

    def update
        set_student
        @student.update(student_params)
        redirect_to student_path(@student)
    end

    private

        def set_student
            @student = Student.find(params[:id])
        end
        
        def student_params
            params.require(:student).permit!
        end 
end