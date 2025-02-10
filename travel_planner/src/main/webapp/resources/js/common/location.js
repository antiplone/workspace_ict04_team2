$(function() {
    let tourAPI = "https://apis.data.go.kr/B551011/KorService1/areaCode1?serviceKey=vQkOIwgxBt6hPrd9oi4ilRgPxTnXhFRqIz7ouD4HcxfgOEeCxXczaQREqB%2BjK4xU5q2kdCMqR1HxfC4woJd9Yg%3D%3D&MobileApp=AppTest&MobileOS=ETC&pageNo=1&numOfRows=10&_type=json";
 $.getJSON(tourAPI)
    .done(function(data) {
       $.each(data.response, function(i, item) {
          console.log(item);
       });
    });
 });