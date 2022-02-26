import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ['name']
  connect() {
    console.log(this.nameTarget.value)
  }
  async searchByName(){
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
          document.getElementById('players-wrapper').innerHTML = players
      }
  }

}