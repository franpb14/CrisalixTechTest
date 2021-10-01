export default class AppCtrl {
  constructor() {
    on('#navbar-toggler', 'click', (e) => {
      let navb = find('#navb')
      console.log(hasClass(navb, 'hide'));
      if(hasClass(navb, 'collapse')) {
        removeClass(navb, 'collapse')
        addClass(navb, 'text-center')
      } else {
        addClass(navb, 'collapse')
        removeClass(navb, 'text-center')
      }
    })
  }
}