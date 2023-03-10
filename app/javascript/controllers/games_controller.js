import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="games"
export default class extends Controller {
  static targets = ["input"]
  static values = {id: String}

  playlist(event) {
    this.inputTarget.value = event.currentTarget.attributes.uri.value
  }


}
