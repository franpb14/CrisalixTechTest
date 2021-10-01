import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
//= require jquery3
//= require popper
//= require bootstrap
import "channels"
import { RalixApp } from 'ralix'
import AppCtrl from 'controllers/app'
import DoctorCtrl from "controllers/doctor"
import AppointmentCtrl from "controllers/appointments"

const App = new RalixApp({
  rails_ujs: Rails,
  routes: {
    '/doctors.*': DoctorCtrl,
    '/appointments.*': AppointmentCtrl,
    '/.*': AppCtrl
  }
})

Rails.start()
Turbolinks.start()
App.start()
ActiveStorage.start()
