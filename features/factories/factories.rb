require 'factory_girl'

Factory.define(:mailer) do |f|
  f.handle "Thank you"
  f.subject "Thank you mail"
  f.body "Thank you for joining us"
end

Factory.define(:menu) do |f|
  f.name "Home"
  f.level "1"
  f.menuset_id "1"
end

Factory.define(:menuset) do |f|
  f.name "Header2"
  f.description "Header2 Menu for rlingCMS"
end

Factory.define(:object_form) do |f|
  f.title "Admission"
  f.body "Admission form for MCA"
  f.perma_link "/admission"
  f.home_page "0"
  f.email "amit@heurion.com"
end

Factory.define(:form_component) do |f|
  f.component_name "email"
  f.component_display_name "E-mail"
  f.component_type "Textfield"
  f.position "0"
end

Factory.define(:form_submission) do |f|

end

Factory.define(:pagelet) do |f|
  f.handle "Home"
  f.display_text "This is home menu"
end

Factory.define(:page) do |f|
  f.title "Home"
  f.body "This is home page"
  f.perma_link "/home"
  f.home_page "0"
  f.page_view_type "0"
  f.allow_create_on_permission "0"
end

Factory.define(:page_variable_setting) do |f|
  f.name "SEO Meta Keywords"
  f.default_value "keywords"
end

Factory.define(:role) do |f|
  f.role_type "Admin"
  f.is_deletable "1"
end

Factory.define(:user_detail_setting) do |f|
  f.field_name"Name"
  f.field_type "Textfield"
  f.default_value "amit"
  f.mandatory "1"
  f.position "0"
end

Factory.define(:object_model) do |f|
  f.name "Blog"
  f.perma_link_parent "/blogs"
  f.description "Blog page"
end

Factory.define(:model_component) do |f|
  f.component_display_name "Title"
  f.component_type "Textfield"
  f.default_value "Enter The title"
  f.is_deletable "0"
end

Factory.define(:model_submission) do |f|
  f.perma_link "/enter-the-title"
  f.home_page "0"
  f.page_view_type "0"
  f.creator_id "1"
  f.updater_id "1"
end

Factory.define(:model_data) do |f|
  f.data_value "Enter The title"
end

Factory.define(:setting) do |f|
  f.name "allow_user_register_user"
  f.desc_text "Should the System allow users to sign up to the website on their own. i.e. Should there be a sign up link for the user to execute"
  f.setting_type "boolean"
end

Factory.define(:user) do |f|
  f.login "amit"
  f.email "amit@heurion.com"
  f.role_id "3"
  f.login_count "17"
  f.failed_login_count "1"
  f.current_login_ip "127.0.0.1"
  f.last_login_ip "127.0.0.1"
end

Factory.define(:view) do |f|
  f.title "Developer"
  f.body "This is Developer view"
  f.perma_link "/developer"
  f.home_page "0"
  f.page_view_type "1"
  f.type "View"
  f.view_type "table"
  f.creator_id "1"
  f.updater_id "1"
end