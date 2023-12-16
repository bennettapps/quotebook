// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"

// Import jQuery/JS Cookie
import jquery from "jquery"
import Cookies, * as cookies from "js-cookie"

// Window
window.jQuery = jquery
window.$ = jquery
window.Cookies = cookies.default  

$(document).on("click", "[data-star-quote]", function (event) {
    event.preventDefault();
  
    var link = $(this);
    var url = link.attr("href");
    var token = $("meta[name='csrf-token']").attr("content");
  
    var current_value = (link.attr("data-star-quote") == "true");
    var new_value = !current_value;
    
    var star_html = '<i class="fas fa-star" style="color:#FFD700; float: right; margin-right: -15px"></i>'

    var form_data = {
      "authenticity_token" : token,
      "quote" : {
        "star" : new_value,
      }
    }

    $.ajax({
        url: url,
        method: "put",
        data: form_data,
        dataType: "JSON",
        success: function (data) {
            var container = $("#quote_" + data.id).find(".star-container");
            if(data.star) {
                container.append(star_html);
                link.text("Unstar");
            } else {
                container.empty();
                link.text("Star");
            }
            console.log(data);
            link.attr("data-star-quote", data.star);
        }
    });
});