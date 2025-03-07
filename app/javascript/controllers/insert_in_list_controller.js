import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="insert-in-list"
export default class extends Controller {
  static targets = ['items', 'form']

  send(event) {
    event.preventDefault()

    fetch(this.formTarget.action, {
      method: 'POST',
      body: new FormData(this.formTarget),
      headers: { Accept: 'application/json' }
    })
      .then((response) => response.json())
      .then((data) => {
        // trocar form velho por form novo
        this.formTarget.innerHTML = data.form
        if(data.inserted_item) {
          this.itemsTarget.insertAdjacentHTML('beforeend', data.inserted_item)
        }
      });
  }
}
