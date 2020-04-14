require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")

require("jquery")
//= require jquery_ujs


import "bootstrap";
import { navbarLinkUpdate } from '../components/navbarLinkUpdate';
import { navbarDropdownUpdate } from '../components/navbarDropdownUpdate';

document.addEventListener('turbolinks:load', () => {
  navbarLinkUpdate();
  navbarDropdownUpdate();



});
