import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="navbar"
export default class extends Controller {
  connect() {
    console.log("Hello from navbar_controller.js")
  }

  updateNavbar() {
    console.log(scrollY, "scrollY")
    console.log(window.innerHeight, "window.innerHeight")
    if (document.location.href === "http://localhost:3000/"){
      if (window.scrollY >= window.innerHeight) {
        this.element.classList.remove("transparent")
        this.element.classList.add("white")
      } else {
        this.element.classList.remove("white")
      }
    } else {
      this.element.classList.add("white")
    }
  }
}
