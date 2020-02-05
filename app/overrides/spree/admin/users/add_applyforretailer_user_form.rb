Deface::Override.new(virtual_path: "spree/admin/users/_form",
										name: "add_applyforretailer_user_form",
										insert_bottom: "[data-hook='admin_user_form_password_fields']",
										disabled: false,
										text: '<div class="form-group" id="applyforretailer">
														<%= f.check_box :applyforretailer,  style: "width:auto" %>
													  <%= f.label :applyforretailer, Spree.t(:applyforretailer) %>
													</div>')