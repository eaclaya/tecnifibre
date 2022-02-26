// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"

window.CSRF_TOKEN = document.querySelector("[name='csrf-token']").content