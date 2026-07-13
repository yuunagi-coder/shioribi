import { Controller } from "@hotwired/stimulus"
import * as bootstrap from "bootstrap"

// Connects to data-controller="introduction-modal"
export default class extends Controller {
  //ターゲットの定義
  static targets = ["introductionModal", "backGround"]
  //モーダルが開かれた時
  connect() {
    const modal = new bootstrap.Modal(this.introductionModalTarget)
    modal.show()
  }
  //モーダルを閉じる
  closeModal(){
    this.backGroundTarget.classList.add("hidden");
  }
} 
