function myFiltr(value,index) {
  // Объявить переменные
  var input, filter, table, tr, td, i, txtValue;
  table = document.getElementById("myTable2");
  tr = table.getElementsByTagName("tr");
console.log(tr);
  // Перебирайте все строки таблицы и скрывайте тех, кто не соответствует поисковому запросу
  for (i = 0; i < tr.length; i++) {
    td = tr[i].getElementsByTagName("td")[index];
    console.log(td);
    if (td) {
      txtValue = td.textContent || td.innerText;
      if (txtValue.indexOf(value) > -1) {
        tr[i].style.display = "";
      } else {
        tr[i].style.display = "none";
      }
    }
  }
}