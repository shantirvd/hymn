import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="answers"
export default class extends Controller {
  connect() {
    console.log('hello')
  }
}
