let basket = {
    totalCount: 0, 
    totalPrice: 0,
    //체크한 장바구니 상품 비우기
    delCheckedItem: function(){
    	   var wishlistNum = []; //배열 만들고
    	   $("input:checkbox[name=buy]:checked").each(function(){
           	var checkVal = $(this).val(); //체크된 값의 value값 가져오기
           	wishlistNum.push(checkVal); 
           
           });
    	   document.querySelectorAll("input[name=buy]:checked").forEach(function (item) {
            item.parentElement.parentElement.parentElement.remove();
        });
    	   
    	   
        
     
        //AJAX 서버 업데이트 전송
        // json 형식으로 데이터 set
            
        // ajax 통신
        $.ajax({
            url : "/ex/zboard/delete",      // 컨트롤러에서 대기중인 URL 주소이다.
            type: "post",
            traditional: true, // ajax 배열 넘기기 옵션!
            data: {"wishlistNum" : wishlistNum} , 
            dataType: "json",
            success : function(res){ // 비동기통신의 성공일경우 success콜백으로 들어옵니다. 'res'는 응답받은 데이터이다.
                // 응답코드 > 0000
                alert(res.result);
            },
            error : function(XMLHttpRequest, textStatus, errorThrown){ // 비동기 통신이 실패할경우 error 콜백으로 들어옵니다.
                alert("통신 실패.")
            }
        });
   
    
        //전송 처리 결과가 성공이면
        this.reCalc();
        this.updateUI();
    },
    //장바구니 전체 비우기
    delAllItem: function(){
	    	var wishlistNum = []; //배열 만들고
	 	   $("input:checkbox[name=buy]:checked").each(function(){
	        	var checkVal = $(this).val(); //체크된 값의 value값 가져오기
	        	wishlistNum.push(checkVal); 
	        
	        });
	 	   document.querySelectorAll("input[name=buy]:checked").forEach(function (item) {
	         item.parentElement.parentElement.parentElement.remove();
	     });
        
	 	//AJAX 서버 업데이트 전송
	        // json 형식으로 데이터 set
	            
	        // ajax 통신
	        $.ajax({
	            url : "/ex/zboard/delete",      // 컨트롤러에서 대기중인 URL 주소이다.
	            type: "post",
	            traditional: true, // ajax 배열 넘기기 옵션!
	            data: {"wishlistNum" : wishlistNum} , 
	            dataType: "json",
	            success : function(res){ // 비동기통신의 성공일경우 success콜백으로 들어옵니다. 'res'는 응답받은 데이터이다.
	                // 응답코드 > 0000
	                alert(res.result);
	            },
	            error : function(XMLHttpRequest, textStatus, errorThrown){ // 비동기 통신이 실패할경우 error 콜백으로 들어옵니다.
	                alert("통신 실패.")
	            }
	        });
	   
	    
	        //전송 처리 결과가 성공이면
	        this.reCalc();
	        this.updateUI();
	    },
    //재계산
    reCalc: function(){
        this.totalCount = 0;
        this.totalPrice = 0;
        document.querySelectorAll(".p_num").forEach(function (item) {
            if(item.parentElement.parentElement.parentElement.previousElementSibling.firstElementChild.firstElementChild.checked == true){
            	var count;
            	if(item.getAttribute('value')==''){
            		count = 0;
            	}else{
            		count = parseInt(item.getAttribute('value'));
            	}
                this.totalCount += count;
                var price = item.parentElement.parentElement.previousElementSibling.firstElementChild.getAttribute('value');
                this.totalPrice += count * price;
            }
        }, this); // forEach 2번째 파라메터로 객체를 넘겨서 this 가 객체리터럴을 가리키도록 함. - thisArg
    },
    //화면 업데이트
    updateUI: function () {
        document.querySelector('#sum_p_num').textContent = '상품갯수: ' + this.totalCount.formatNumber() + '개';
        document.querySelector('#sum_p_price').textContent = '합계금액: ' + this.totalPrice.formatNumber() + '원';
    },
    //개별 수량 변경
    changePNum: function (pos) {
        var item = document.querySelector('input[name=p_num'+pos+']');
        var p_num = parseInt(item.getAttribute('value'));
        var newval = event.target.classList.contains('up') ? p_num+1 : event.target.classList.contains('down') ? p_num-1 : event.target.value;
        
        if (parseInt(newval) < 1 || parseInt(newval) > 99) { return false; }

        item.setAttribute('value', newval);
        item.value = newval;

        var price = item.parentElement.parentElement.previousElementSibling.firstElementChild.getAttribute('value');
        item.parentElement.parentElement.nextElementSibling.textContent = (newval * price).formatNumber()+"원";
        //AJAX 업데이트 전송

        //전송 처리 결과가 성공이면    
        this.reCalc();
        this.updateUI();
    },
    checkItem: function () {
        this.reCalc();
        this.updateUI();
    },
        delItem: function(){
	    	var wishlistNum = []; //배열 만들고
	 	   $("input:checkbox[name=buy]:checked").each(function(){
	        	var checkVal = $(this).val(); //체크된 값의 value값 가져오기
	        	wishlistNum.push(checkVal); 
	        
	        });
	 	   document.querySelectorAll("input[name=buy]:checked").forEach(function (item) {
	         item.parentElement.parentElement.parentElement.remove();
	     });
        
	 	//AJAX 서버 업데이트 전송
	        // json 형식으로 데이터 set
	            
	        // ajax 통신
	        $.ajax({
	            url : "/ex/zboard/delete",      // 컨트롤러에서 대기중인 URL 주소이다.
	            type: "post",
	            traditional: true, // ajax 배열 넘기기 옵션!
	            data: {"wishlistNum" : wishlistNum} , 
	            dataType: "json",
	            success : function(res){ // 비동기통신의 성공일경우 success콜백으로 들어옵니다. 'res'는 응답받은 데이터이다.
	                // 응답코드 > 0000
	                alert(res.result);
	            },
	            error : function(XMLHttpRequest, textStatus, errorThrown){ // 비동기 통신이 실패할경우 error 콜백으로 들어옵니다.
	                alert("통신 실패.")
	            }
	        });
	   
	    
	        //전송 처리 결과가 성공이면
	        this.reCalc();
	        this.updateUI();
	    },
    }

// 숫자 3자리 콤마찍기
Number.prototype.formatNumber = function(){
    if(this==0) return 0;
    let regex = /(^[+-]?\d+)(\d{3})/;
    let nstr = (this + '');
    while (regex.test(nstr)) nstr = nstr.replace(regex, '$1' + ',' + '$2');
    return nstr;
};