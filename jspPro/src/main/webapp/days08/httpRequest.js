
var httpRequest = null; 

function getXMLHttpRequest(){
   if(window.ActiveXObject){  
      try {
         return new ActiveXObject("Msxml2.XMLHTTP");
      } catch (e) {
         try {
            return new ActivXObject("Microsoft.XMLHTTP");
         } catch (e) {
            return null;
         }

      }
   }else if(window.XMLHttpRequest){
      return new XMLHttpRequest();       
   }else {
      return null;
   }
}

// 요지 : get/post 방식에 따른 비동기 send() 구현하는 함수 생성...
function sendRequest(url,params,callback,method){     
   httpRequest = getXMLHttpRequest();  // xhr      
   httpRequest.onreadystatechange = callback;  // 사용하는 곳에서 매개변수 등록하며 사용하겠다...
   var httpMethod= method?method:'GET';   
   if(httpMethod!='GET' && httpMethod!='POST') httpMethod='GET';
   var httpParams = (params==null||params=="")?null:params;
   var httpUrl = url;
   if(httpMethod=='GET' && httpParams != null){
      httpUrl= httpUrl +"?"+httpParams;
   }     
   httpRequest.open(httpMethod,httpUrl,true);  
   httpParams = (httpMethod=='POST'?httpParams:null );
   httpRequest.send( httpParams );  
}