window.addEventListener('DOMContentLoaded', (event) => {
  document.querySelectorAll('.something').forEach((ele) => {
    ele.addEventListener('click', () => {
      console.log('hi')
      document.getElementById("mySidebar").classList.toggle('toggle-sidebar');
      document.getElementById("main").classList.toggle('toggle-main')
    })
  })
});

