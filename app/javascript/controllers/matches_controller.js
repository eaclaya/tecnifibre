import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ['name']
  
  async searchByName(event){
      const target = event.params.id ? event.params.id : 'players-wrapper'
      const number = event.params.number ? event.params.number : 1
      if(!this.nameTarget.value){
            document.getElementById(target).innerHTML = ''
            if(number == 1){
                data.player_one = null
            }else{
                data.player_two = null
            }
            return
      }
      const config = {
        method: 'POST',
        headers: {
            Accept: 'application/json',
            'Content-Type': 'application/json',
            "X-CSRF-Token": CSRF_TOKEN
        },
        body: JSON.stringify({name: this.nameTarget.value, number: number})
    };
      const response = await fetch('/players/search-match-player', config)
      const players = await response.text()
      if(players){
          document.getElementById(target).innerHTML = players
      }
  }
  
}