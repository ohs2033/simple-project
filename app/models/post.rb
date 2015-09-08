class Post < ActiveRecord::Base
    
    include SearchCop

      search_scope :search do
        attributes :name, :address
      end

    
    
    has_many :opinions
    has_many :users, :through => :opinions
end
