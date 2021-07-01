 /*데이터 항목 만들기

0. ajax 통신 : json data 받아오기
0.1 json data를 array로 파싱하기 

1. labels  == > 그래프 항목 받아오기
	
2. data 만들기 (javascript data array 받기)

3. config 지정
	
4. 디자인 관련 config 지정
	
5. convas id 로 연결하기

*/
//1. ajax 통신 GET 방식으로 전송하기
//버튼 이벤트 클릭하기

/*새로고침 누르면 ajax 통신으로 데이터 가져온다.*/

const labels = [
  'January',
  'February',
  'March',
  'April',
  'May',
  'June'
];

const data = {
  labels: labels,
  datasets: [{
    label: '월 매출액',
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
    document.getElementById('income-week'),
    config
  );