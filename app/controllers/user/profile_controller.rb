class User::ProfileController < UserController
  
  def show
      @post = Post.new
      @comment = Comment.new
  end
  
  def potential_to_follow
    if params[:search].present?
        @potential_to_follow = User.where("name ILIKE ?", "%#{params[:search]}%").order('id DESC')
    else    
      @potential_to_follow = User.potential_to_follow(current_user)
      #o escope potential_to_follow criado no model User onde trás ponteciais usuarios a seguir
    end
  end

  def following
      @following = current_user.following
  end

  def followers
      @followers = current_user.followers
  end
end
