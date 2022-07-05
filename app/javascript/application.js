// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"

import "channels"



function scroller(){

	const scroll_window = document.getElementById("message-container");
	scroll_window.scrollTop = scroll_window.scrollHeight;
}

scroller();

// console.log(scroll_window);

