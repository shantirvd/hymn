import { Controller } from "@hotwired/stimulus"
import { createConsumer } from "@rails/actioncable"

// Connects to data-controller="answers-index-subscription"
export default class extends Controller {
  static values = { songId: Number }
  static targets = ["answers"]

  connect() {
    this.channel = createConsumer().subscriptions.create(
      { channel: "AnswersIndexChannel", song_id: this.songIdValue },
      { received: (data) => {
          console.log(data);
          this.answersTarget.insertAdjacentHTML("beforeend", data);
        }
      }
    )
    console.log(`Subscribed to the answers index with the id ${this.songIdValue}.`)

    }
  }
