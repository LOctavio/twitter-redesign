class CulturalExperiencesController < ApplicationController
    include SessionsHelper

    before_action :require_login

    def index;end
    
end
