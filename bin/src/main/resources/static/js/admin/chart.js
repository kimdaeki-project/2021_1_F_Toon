/**
 * 
 */
 /**/
/*데이터 항목 만들기*/

const labels = [
  'January',
  'February',
  'March',
  'April',
  'May',
  'June',
];

const data = {
  labels: labels,
  datasets: [{
    label: '충전 매출액',
    backgroundColor: 'rgb(255, 99, 132)',
    borderColor: 'rgb(255, 99, 132)',
    data: [0, 1000, 5000, 10000, 20000,15000, 40000],
  }]
};
const config = {
  type: 'line',
  data,
  options: {}
};

 var myChart = new Chart(
    document.getElementById('totalIncome'),
    config
  );