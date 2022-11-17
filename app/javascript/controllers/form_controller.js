import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="form"
export default class extends Controller {
  static targets = [ "plantform" ]

  connect() {
    console.log('Hello I work!')
  }

  popUp(event) {
    console.log(event)
    this.plantformTarget.classList.remove('hidden')
  }
}
