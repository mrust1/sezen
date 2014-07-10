class UsersController < InheritedResources::Base
def create  
  @user = User.new(params[:user])  
  
  respond_to do |format|  
    if @user.save  
      UserMailer.registration_confirmation(@user).deliver  
      format.html { redirect_to(@user, :notice => 'User was successfully created.') }  
      format.xml  { render :xml => @user, :status => :created, :location => @user }  
    else  
      format.html { render :action => "new" }  
      format.xml  { render :xml => @user.errors, :status => :unprocessable_entity }  
    end  
  end  
end 

end
