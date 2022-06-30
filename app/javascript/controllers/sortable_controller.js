import { Controller } from "stimulus"
import Sortable from "sortablejs"

export default class extends Controller {
  static targets = ["form"];
  connect() {
    Sortable.create(this.element, {
      ghostClass: "ghost",
      animation: 150,
      onEnd: (event) => {
        const ids = []; 
        event.to.querySelectorAll(".project").forEach((el) => {
            ids.push(el.dataset.projectId)})
        console.log(ids)
        console.log(this.formTarget.action)
        const body = new FormData(this.formTarget)
        body.append("ids", ids)


        const url = this.formTarget.action
        fetch(url, {
          method: "PATCH",
          headers: { "Accept": "text/plain" },
          body: body
        })
          .then(response => response.text())
          .then((data) => {
            console.log(data)
          })

      }
    })
  }
}