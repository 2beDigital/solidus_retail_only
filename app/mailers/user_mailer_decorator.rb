Spree::UserMailer.class_eval do
  helper 'spree/base'
  
  def info_account_retail(user)
    @store = Spree::Store.default
    @user = user.respond_to?(:id) ? user : Spree::User.find(user)
    subject = "#{@store.name} #{t(:info_account_retail)} "
    mail(to: @user.email, from: from_address(@store), subject: subject)
  end

  def confirm_account_retail(user)
    @store = Spree::Store.default
    @user = user.respond_to?(:id) ? user : Spree::User.find(user)
    subject = "#{@store.name} #{t(:confirm_account_retail)} "
    mail(to: @user.email, from: from_address(@store), subject: subject)
  end

end