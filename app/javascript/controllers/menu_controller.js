import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  connect() {
    const menu = document.querySelector('.menu-icon');
    const menuIcon = document.querySelector('.menu-icon-image');
    const mobileMenu = document.querySelector('.mobile-menu');

    menu.addEventListener('click', () => {
      mobileMenu.classList.toggle('hidden');
    })
  }
}