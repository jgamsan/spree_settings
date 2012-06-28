Deface::Override.new(:virtual_path => %q{spree/shared/_search},
                          :name => %q{add_flag_locale},
                          :insert_after => %q{code[erb-loud]:contains('form_tag')},
                          :text => %q{<%= image_tag("flags_icons/#{session[:locale]}.gif") unless session[:locale].nil? %> })
