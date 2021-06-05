// inside app/frontend/js/bootstrap_js_files.js  

import 'bootstrap/js/src/alert'  
import 'bootstrap/js/src/button'  
import 'bootstrap/js/src/carousel'  
import 'bootstrap/js/src/collapse'  
import 'bootstrap/js/src/dropdown'  
import 'bootstrap/js/src/modal'  
import 'bootstrap/js/src/popover'  
import 'bootstrap/js/src/scrollspy'  
import 'bootstrap/js/src/tab'  
import 'bootstrap/js/src/toast'  
import 'bootstrap/js/src/tooltip' 

function openNav() {
  document.getElementById("mySidebar").style.width = "250px";
  document.getElementById("main").style.marginLeft = "250px";
}
/* Set the width of the sidebar to 0 and the left margin of the page content to 0 */
function closeNav() {
  document.getElementById("mySidebar").style.width = "0";
  document.getElementById("main").style.marginLeft = "0";
}


