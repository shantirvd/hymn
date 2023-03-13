import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="games"
export default class extends Controller {
  static targets = ["input", "card"]
  static values = {id: String}

  connect() {
    console.log("hello");
  }

  playlist(event) {
    this.inputTarget.value = event.currentTarget.attributes.uri.value;
    this.cardTargets.forEach((elem) => { elem.classList.remove("active") } )
    event.currentTarget.classList.add("active")

  }
}
