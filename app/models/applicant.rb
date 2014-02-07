class Applicant < ActiveRecord::Base
  scope :todays_interview,where( 'scheduleofinterview between ? and ?', Date.today, Date.tomorrow)
  attr_accessible :email, :interviewers, :name, :role, :round, :scheduleofinterview, :experience, :status, :technology, :cv, :lname, :mobile, :education
  has_attached_file :cv,
                    :url  => "/assets/products/:id/original/:basename.:extension",
                    :path => ":rails_root/public/assets/products/:id/original/:basename.:extension"

  validates_attachment_content_type :cv,
      :content_type => [ 'application/pdf', 'application/msword', 'application/vnd.openxmlformats-officedocument.wordprocessingml.document'],
      :message => "only pdf and word files are allowed"
      validates :email, :uniqueness => true
    validates :email, :format => { :with => /^(|(([A-Za-z0-9]+_+)|([A-Za-z0-9]+\-+)|([A-Za-z0-9]+\.+)|([A-Za-z0-9]+\++))*[A-Za-z0-9]+@((\w+\-+)|(\w+\.))*\w{1,63}\.[a-zA-Z]{2,6})$/,
    :message => "Wrong Format" }
        validates_presence_of :email, :mobile,:lname,:education,:interviewers, :name, :role, :round, :scheduleofinterview, :experience, :status, :technology, :cv
validates_length_of :mobile, :minimum => 10, :maximum => 10, :allow_blank => true
def self.search(search)
    if search
      where('LOWER(name) LIKE ? OR LOWER(email) LIKE ? OR LOWER(technology) LIKE ? OR LOWER(mobile) LIKE ?', "%#{search.downcase}%","%#{search.downcase}%","%#{search.downcase}%","%#{search.downcase}%") if search.present?
    else
      all
    end
  end

end
