import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="search"
export default class extends Controller {
  connect() {
    this.element.setAttribute('data-action', 'keyup->search#search')
  }

  search() {
    let params = new URLSearchParams()
    params.append('query', this.element.value)

    fetch('/?${params}',
     {
      method: 'GET',
       headers: {
       accept: 'text/vnd.turbo-stream.html' } 
      }
     ).then(response => response.text())
      .then(html => Turbo.renderStreamMessage(html))

  }
}
