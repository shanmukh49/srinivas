class Sourcingpartner < ActiveRecord::Base
  attr_accessible :description, :name
    validates :name, :uniqueness => true
          validates_presence_of :name

def self.search(search)
  if search
    find(:all, :conditions => ['name LIKE ?', "%#{search}%"])
  else
    find(:all)
  end
end


end
