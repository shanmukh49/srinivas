class Interviewer < ActiveRecord::Base
  attr_accessible :email, :name, :role
  validates :email, :uniqueness => true
    validates :email, :format => { :with => /^(|(([A-Za-z0-9]+_+)|([A-Za-z0-9]+\-+)|([A-Za-z0-9]+\.+)|([A-Za-z0-9]+\++))*[A-Za-z0-9]+@((\w+\-+)|(\w+\.))*\w{1,63}\.[a-zA-Z]{2,6})$/,
    :message => "Wrong Format" }
    validates_presence_of :email, :name, :role

def self.search(search)
  if search
    find(:all, :conditions => ['name LIKE ?', "%#{search}%"])
  else
    find(:all)
  end
end


end
