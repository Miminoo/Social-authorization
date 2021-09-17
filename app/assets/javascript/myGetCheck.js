function getCheckedCheckBoxes(){
  var checkboxes = document.getElementsByClassName('checkbox');
  var checkboxesChecked = []; // можно в массиве их хранить, если нужно использовать 
  for (var index = 0; index < checkboxes.length; index++) {
     if (checkboxes[index].checked) {
        checkboxesChecked.push(checkboxes[index].value);
        return checkboxesChecked[index];
     }
  }
  console.log(checkboxesChecked); 
}