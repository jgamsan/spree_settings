Deface::Override.new(:virtual_path => "spree/layouts/spree_application",
                     :name => "setting_in_header",
                     :insert_bottom => "#main-nav-bar",
                     :text => "<li class='<%= (request.fullpath.gsub('//','/') == '/set-initial') ? 'current' : 'not'%>'><%= link_to t('spree.settings.new.set_initial'), '/set-initial'  %></li>")
