 /*데이터 항목 만들기

0. ajax 통신 : json data 받아오기
1.1 json data를 array로 파싱하기 

2. labels  == > 그래프 항목 받아오기
1	
2. data 만들기 (javascript data array 받기)

3. config 지정
	
4. 디자인 관련 config 지정
	
5. convas id 로 연결하기

*/


//1,ajax 통신 받아오기 
$.ajax({
	"type" : "get",
    "url" : "**/sales/today",
    "data" : {},
    "dataType": "json",
    "success" : function(data){
    alert("가져온 데이터 입니다 . "+data);
    
    },
    "error" : function(info, xhr){
        if(info.readyState == '4'){
            alert('문제가 발생했습니다.\n상태코드 : ' + info.status+ '\n\n' + info.responseText);
        }else{
            alert('문제가 발생했습니다.\n잠시후 다시 시도해 주세요.\n 상태코드 : ' +info.status);
        }
    }
});
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
  options: {
	animations: {
      tension: {
        duration: 1000,
        easing: 'linear',
        from: 1,
        to: 0,
        loop: true
      }
     }
}};

var myChart = new Chart(
    document.getElementById("income_month"),
    config
);