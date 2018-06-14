Spree::Admin::UsersController.class_eval do
  def index
    @roles = Spree::Role.all
    respond_with(@collection) do |format|
      format.html
    end
  end
  def update
    if @user.update_attributes(user_params)
      set_roles
      set_stock_locations
      if @user.applyforretailer
        Spree::UserMailer.confirm_account_retail(@user).deliver
      end
      @user.save
      flash.now[:success] = Spree.t(:account_updated)
      redirect_to edit_admin_user_url(@user)
    else
      load_roles
      load_stock_locations

      flash.now[:error] = @user.errors.full_messages.join(", ")
      render :edit, status: :unprocessable_entity
    end
  end

  private

  def set_roles
    if user_params[:spree_role_ids]
      @user.spree_roles = user_params[:spree_role_ids].reject(&:blank?).collect{|r| Spree::Role.find(r)}
      @user.applyforretailer =  (@user.has_spree_role? :retail) ? true : false
    elsif can?(:manage, Spree::Role)
      @user.spree_roles = []
      @user.applyforretailer = false
    end
  end
end