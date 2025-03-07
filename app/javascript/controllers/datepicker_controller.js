import { Controller } from "@hotwired/stimulus"
import flatpickr from "flatpickr"

// Connects to data-controller="datepicker"
export default class extends Controller {
  connect() {
    flatpickr(this.element, {})
    // this.element encontra a tag com data-controler="datepicker"
    // flatpickr(input-da-data, {});
  }
}
