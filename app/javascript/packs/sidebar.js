document.querySelectorAll('.sidebar-toggler').forEach((ele) => {
  ele.addEventListener('click', () => {
    console.log('hi')
    document.getElementById("mySidebar").classList.toggle('toggle-sidebar');
  })
})

