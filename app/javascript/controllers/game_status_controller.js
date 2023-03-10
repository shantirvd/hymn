import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="games"
export default class extends Controller {
  static targets = ['status'];

  update(event) {
    const status = event.currentTarget.dataset.status;
    this.statusTarget.innerHTML = status;
  }
}
