Spree::StaticContentController.class_eval do
  alias_method :orig_show, :show unless method_defined? :orig_show
  def show
    #Admin and retail users can view all pages. Not retail users only can view not retail pages.
    if spree_current_user and (spree_current_user.has_spree_role? (:admin) or spree_current_user.has_spree_role? ('retail'))
      orig_show
    else
      @page=Spree::Page.by_store(current_store).visible.not_retail.find_by(slug: request.path)
    end
  end
end