class HomeController < ApplicationController
  @@arr=Array.new
  @@arr=[]
  
  
  def navbar
       @show = @@arr
  end
  def index
    
        @@arr ||= []
        
    @post = Post.all
  end
  
  def detail
    @post = Post.find(params[:id])
  end
  
  def category
  end
  
  def write
    
   if  Opinion.where(:user_id =>current_user.id, :post_id => params[:id]).empty?
    
    opinions = Opinion.new
    opinions.user_id = current_user.id
    opinions.post_id = params[:id]
    opinions.general = params[:rating1].to_i
    opinions.money = params[:rating2].to_i
    opinions.service = params[:rating3].to_i
    opinions.cut = params[:rating4].to_i
    opinions.perm = params[:rating5].to_i
    opinions.dye = params[:rating6].to_i
    opinions.op= params[:text]
    opinions.save
  
    a = Opinion.where(post_id: params[:id]).all
    
    
    staraverage=a.average(:general).to_f
    #ski=a.average(:skill)
    s=Post.find(params[:id].to_i)
    s.star =staraverage
    s.save
    
  else
    
  end
    
   redirect_to :back
  end
  
  def likeopinion_process
    s= Opinion.find(params[:id])
    
    if Likeopinion.where(:user_id =>current_user.id, :opinion_id => params[:id]).empty?
    
      
      Likeopinion.create(:user_id => current_user.id, :opinion_id => params[:id], :likeop => true)
      
      s.likenumber = s.likenumber + 1
      s.save
      
      
    else
        
      Likeopinion.where(:user_id =>current_user.id, :opinion_id => params[:id]).first.destroy
      s.likenumber = s.likenumber - 1
      s.save
    
    end
    render :text =>""
    
  end
  
  
  def searchboxer
    searching = params[:searchkey]
    @result=Post.search(searching).all
    @ar =Array.new
    @result.each do |x|
    c=x.id
    k=c.to_s
    @ar << k
    @x=nil
   # @ar2 = Array.new
    #  for i in 0...@ar.length
      
    
    
    
    end
     @@arr=@ar
    
   # render json: {:text => ar}
   
  end
end 
