User.class_eval do
  before_create :set_role
  
  def set_role
    self.role_ids = Role.find_by_name("user").id
  end    
end