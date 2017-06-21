

 function turnBlue(element) {
  if(element.style.fontFamily == 'Wingdings') {
    element.style.fontFamily = '';
  } else {
    element.style.fontFamily = 'Wingdings';
  }
 }


  function getData2() {
    var permitDiv = document.getElementById('permits');

    $.get('https://data.cityofchicago.org/resource/building-permits.json', function(permits) {

        var htmlString = "";

        for (var i = 0; i < permits.length; i++) {
          permit = permits[i];

          htmlString += '<div class="permits">'
          htmlString += '<h2 onclick=\'turnBlue(this)\'>' + permit._permit_type; + '</h2>'
          htmlString += '<p>Cost: $' + permit._total_permit_fee + '</p>'
          htmlString += '<hr>'
          htmlString += '</div>'
        }

        permitDiv.innerHTML = htmlString;


    });


  }



function getData() {
  var employeesDiv = document.getElementById('employees');

  $.get('https://data.cityofchicago.org/resource/xzkq-xp2w.json', function(employees) {
    console.log(employees);

    var htmlString = "";

    for (var i = 0; i < employees.length; i++) {
      var employee = employees[i];

      htmlString += '<div class="employees" onclick="changeEmployee(this)">'

      htmlString += '<h2>' + employee.name + '</h2>';
      htmlString += '<p>Job Title: ' + employee.job_titles + '</p>';
      htmlString += '<p>Department: ' + employee.department + '</p>';
      htmlString += '<p>Salary: ' + employee.annual_salary + '</p>';
      htmlString += '<br>'
      htmlString += '</div>';



    }

    employeesDiv.innerHTML = htmlString;

  })


}

function changeEmployee(employeeDiv) {
  if(employeeDiv.style.color == 'lightgray') {
    employeeDiv.style.color = '';
  } else {
    employeeDiv.style.color = 'lightgray';
  }
}

function showAll() {
  var employees = document.getElementsByClassName('employees');

  for (var i = 0; i < employees.length; i++) {
    var employee = employees[i];
    employee.classList.remove('hidden');
  }
}

function showPolice() {
  var employees = document.getElementsByClassName('employees');

  for (var i = 0; i < employees.length; i++) {
    var employee = employees[i];

    if (employee.innerHTML.indexOf("POLICE") !== -1) {
      employee.classList.remove('hidden');
    } else {
      employee.classList.add('hidden');
    }

    employee.style.display = '';
  }
}


function showAllPermits() {
  var permits = document.getElementsByClassName('permits');

  for (var i = 0; i < permits.length; i++) {
    var permit = permits[i];
    permit.classList.remove('hidden');
  }
}

function showExpensivePermits() {
  var permits = document.getElementsByClassName('permits');

  for (var i = 0; i < permits.length; i++) {
    var permit = permits[i];

    if (permit.innerHTML.indexOf('52.5') !== -1) {
      permit.classList.add('hidden');

    } else {
      permit.classList.remove('hidden');
    }
  }
}

function removeWingDings() {
  var permits = document.getElementsByClassName('permits');

  for (var i = 0; i < permits.length; i++) {
    var permit = permits[i];

    if (permit.style.fontFamily === 'Wingdings') {
      permit.classList.add('hidden');

    } else {
      permit.classList.remove('hidden');
    }
  }
}

