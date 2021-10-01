import AppCtrl from "./app";

export default class AppointmentCtrl extends AppCtrl{
  constructor() {
    super()
    on('.linksMore', 'click', (e) => {
        let groupPhotos = e.target.closest('.row').querySelector('.groupPhotos');

        if (hasClass(groupPhotos, 'hidden')) {
          e.target.innerText = 'Hide'
          removeClass(groupPhotos, 'hidden')
        } else {
          e.target.innerText = 'See more'
          addClass(groupPhotos, 'hidden')
        }
    })
  }
}