class User < ActiveRecord::Base
  attr_accessible :email, :name, :password

  acts_as_authentic 
end
