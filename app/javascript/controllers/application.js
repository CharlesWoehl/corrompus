import { Application } from "@hotwired/stimulus"
import { application } from "./application"

import NavbarController from "./navbar_controller.js"
application.register("navbar", NavbarController)

const application = Application.start()

// Configure Stimulus development experience
application.debug = false
window.Stimulus   = application

export { application }
