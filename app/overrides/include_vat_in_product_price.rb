Deface::Override.new(:virtual_path => "spree/shared/products",
                     :name => "include_vat_in_product_price",
                     :replace => %q{.price_selling},
                     :text => "<span class="price selling" itemprop="price"><%= number_to_currency product.price * session[:vat] %></span>")
