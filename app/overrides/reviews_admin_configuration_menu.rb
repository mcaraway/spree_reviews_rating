Deface::Override.new(:virtual_path => "spree/admin/shared/_configuration_menu",
                     :name => "add_review_settings_link_configuration_menu",
                     :insert_bottom => "[data-hook='admin_configurations_sidebar_menu']",
                     :text => %q{<%= configurations_sidebar_menu_item t("reviews_rating.review_settings"), spree.admin_review_settings_path %>},
                     :disabled => false)

Deface::Override.new(:virtual_path => "spree/admin/configurations/index",
                     :name => "add_review_settings_to_configuration_menu",
                     :insert_after => "[data-hook='admin_configurations_menu']",
                     :partial => "spree/admin/shared/reviews_setting_configurations_menu",
                     :disabled => false)
