import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ['name']
  
  async searchByName(event){
      const target = event.params.id ? event.params.id : 'players-wrapper'
      const config = {
        method: 'POST',
        headers: {
            Accept: 'application/json',
            'Content-Type': 'application/json',
            "X-CSRF-Token": CSRF_TOKEN
        },
        body: JSON.stringify({name: this.nameTarget.value})
    };
      const response = await fetch('/players/search-by-name', config)
      const players = await response.text()
      if(players){
          document.getElementById(target).innerHTML = players
      }
  }
}