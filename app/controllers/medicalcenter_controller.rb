class MedicalcenterController < ApplicationController
    def show
        render template: "medicalcenter/#{params[:page]}"
    end
end
