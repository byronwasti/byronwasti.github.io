console.log("test");

function runscript(e) {
  console.log("clicked");
  console.log(e);
  let overlay = e.id + '-1';
  document.getElementById(overlay).style.display = 'block';
}
