ActiveAdmin.register Applicant do
  scope :todays_interview

   actions :all, :except => [:destroy, :edit, :new]
	   filter :name
	   filter :technology
     filter :sourcingpartner
     filter :role
	   filter :round
	   filter :scheduleofinterview
	   filter :interviewers
	   filter :status
	 index do
  column :name
  column :technology
  column "Sourcing Partner", :sourcingpartner
    column :role
  column :round
  column "Schedule Of Interview", :scheduleofinterview
  column :interviewers
  column :status
  column "CV" do |applicant|
      link_to 'My CV',applicant.cv.url 
    end
  default_actions
end  
end
