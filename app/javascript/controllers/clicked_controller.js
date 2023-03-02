import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="clicked"
export default class extends Controller {

  static targets = [ "btn" ]

  meurtrefilter() {
    this.element.classList.add("rose")
    this.element.innerText = "Meurtre"
    console.log("Hello, Stimulus!", this.element)
  }
}
