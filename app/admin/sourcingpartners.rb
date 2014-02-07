ActiveAdmin.register Sourcingpartner do
  
  menu :parent => "More"
	   actions :all, :except => [:destroy, :edit, :new]
end
