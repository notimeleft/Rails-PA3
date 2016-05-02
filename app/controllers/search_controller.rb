class SearchController < ApplicationController


  def search
    name_list = Subject.order(:name).pluck(:subject_id, :name)

    @notes = {}
    @notes['Select a subject'] = nil

    name_list.sort_by{|subject_id, name| name}.each do |subject_id, name|
      @notes[name] = subject_id
    end



    end
    def partial_render

      if !params[:subject] && !params[:course]
        @display_res = []
      elsif params[:subject] != '<option value=' && params[:course].size==0
        @display_res =Course.where('code =?',params[:subject])
      elsif params[:subject] != '<option value=' && params[:course].size>0
        @display_res = Course.where("code =? AND name LIKE ?", params[:subject], "%#{params[:course]}%")
      elsif params[:subject] == '<option value=' && params[:course].size>0
        @display_res = Course.where('name LIKE ?',"%#{params[:course]}%")
      else
        @display_res = []
        @nothing = "no results!"
      end
      respond_to do |format|
        format.js
      end

    end



    def enroll
      @current_user = current_user.email
      @result = "What happened?! You did not enroll successfully."
      if params[:course]
        @result = Course.find(params[:course])
        @subj = Subject.find_by subject_id: @result.code
        Enrollment.create(user_email: @current_user, subject: @subj.name, course_name:@result.name)
      end
    end
end
