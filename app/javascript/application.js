// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"

document.addEventListener("turbo:load", function () {
  const burger = document.getElementById("burger");
  const menu = document.getElementById("nav-links");

  if (!burger || !menu) return;

  burger.addEventListener("click", function () {
    menu.classList.toggle("active");
  });
});
