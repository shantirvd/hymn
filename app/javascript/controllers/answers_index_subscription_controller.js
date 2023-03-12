import { Controller } from "@hotwired/stimulus"
import { createConsumer } from "@rails/actioncable"

// Connects to data-controller="answers-index-subscription"
export default class extends Controller {
  static values = { answersIndexId: Number }
  static targets = ["answers"]

  connect() {
    this.channel = createConsumer().subscriptions.create(
      { channel: "AnswersIndexChannel", id: this.answersIndexIdValue },
      { received: data => this.answersTarget.insertAdjacentHTML("beforeend", data) }
    )
    console.log(`Subscribed to the answers index with the id ${this.answersIndexIdValue}.`)

  }
}
