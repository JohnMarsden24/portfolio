require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")

import "bootstrap";
import { setActive } from '../components/setActive';

document.addEventListener('turbolinks:load', () => {
  setActive();
});
