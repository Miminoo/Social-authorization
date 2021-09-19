function ShowHide() {
  element = document.getElementById('main_checkbox');
  var checkboxes = document.querySelectorAll('input[type="checkbox"]');
  for (var i = 1; i < checkboxes.length; i++) {
  if (element.checked==true){checkboxes[i].checked = true;}
  else if (element.checked==false){ checkboxes[i].checked = false;}
  }
}