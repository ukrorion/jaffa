import '../stylesheets/application.sass'

import 'bootstrap/dist/js/bootstrap.min'
import {} from 'jquery-ujs'
import 'bootstrap-datepicker/dist/js/bootstrap-datepicker'

import fontawesome from '@fortawesome/fontawesome'
import solid from '@fortawesome/fontawesome-free-solid'
import regular from '@fortawesome/fontawesome-free-regular'
fontawesome.library.add(solid)
fontawesome.library.add(regular)

$(() => {
  $('.birthday').datepicker({format: 'dd/mm/yyyy'});
})
