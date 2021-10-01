import AppCtrl from "./app";

export default class DoctorCtrl extends AppCtrl {
  constructor() {
    super()

    find('#query_city').value = 'Sevilla'
    on('#adv-options', 'click', (e) => {
      console.log(hasClass('#second_search', 'hidden'))
      if (hasClass('#second_search', 'hidden')) {
        removeClass('#second_search', 'hidden')
        removeClass('#faarrow', 'fa-angle-down')
        addClass('#faarrow', 'fa-angle-up')
      } else {
        addClass('#second_search', 'hidden')
        removeClass('#faarrow', 'fa-angle-up')
        addClass('#faarrow', 'fa-angle-down')
      }
    })

  }
}