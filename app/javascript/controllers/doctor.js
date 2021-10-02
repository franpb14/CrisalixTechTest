import AppCtrl from "./app";

export default class DoctorCtrl extends AppCtrl {
  constructor() {
    super()
    let lastQuery = find('#last_query')
    let queryCity = find('#query_city')
    
    lastQuery.value === "" ? queryCity.value = 'Sevilla' : queryCity.value = lastQuery.value
    
    on('#adv-options', 'click', (e) => {
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