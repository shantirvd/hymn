import { Controller } from "@hotwired/stimulus"
import { createConsumer } from "@rails/actioncable"

// Connects to data-controller="answers-index-subscription"
export default class extends Controller {
  static values = {
    songId: Number,
    currentUserId: Number
  }
  static targets = ["answers", "links"]

  connect() {
    this.channel = createConsumer().subscriptions.create(
      { channel: "AnswersIndexChannel", song_id: this.songIdValue },
      { received: (data) => {
          const currentUserIsGameMaster = this.currentUserIdValue === data.game_master_id
          this.answersTarget.insertAdjacentHTML("beforeend", data.answer);
          if (currentUserIsGameMaster) {
            this.linksTarget.insertAdjacentHTML("beforeend", data.answer_links)}
        }
      }
    )
    }
  }
