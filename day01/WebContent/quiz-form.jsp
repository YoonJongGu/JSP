<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>quiz.html</title>
    <style>
        body {
            background-color: #f5f6f7;
        }
        #root {
            width: 500px;            
            margin: auto;            
        }
        span {
            border: 1px solid #dadada;            
            background-color: #fff;
            font-size: 12px;
            font-family: Dotum, '돋움', Helvetica, sans-serif;
            padding: 10px;            
        }
        .logo {
            text-align: center;
            padding: 40px 0;
        } 
        .logo > img {            
            width: 165px;
            height: 32px;
            cursor: pointer;
        }
        div {
            margin: 10px 10px;
            font-weight: bold;
        }
        .id > span > input {
            width: 70%;
            height: 25px;            
            border: 0;                    
        }
        .id > span > span {            
            font-weight: normal;
        }
        .id > span {
            display: block;            
            padding: 10px;
        }
        .id > div {
            margin: 10px 0;
        }
        
        .pw > span > input {
            width: 100%;
            height: 25px;
            border: 0;                    
        }
        .pw > span {
            display: block;
            text-align: center;
            padding: 10px;
        }
        .pw > div {
            margin: 10px 0;
        }

        .pwr > span > input {
            width: 100%;
            height: 25px;
            border: 0;                    
        }
        .pwr > span {
            display: block;
            text-align: center;
            padding: 10px;
        }
        .pwr > div {
            margin: 10px 0;
        }

        .name > span > input {
            width: 100%;
            height: 25px;
            border: 0;                    
        }
        .name > span {
            display: block;
            text-align: center;
            padding: 10px;
        }
        .name > div {
            margin: 40px 0 10px 0;
        }

        .birth > div > span > input {
            width: 100%;
            height: 25px;
            border: 0;                    
        }
        .birth > div > span > select {
            width: 100%;
            height: 25px;
            border: 0;                    
        }
        .brith > div > span > span {            
            font-weight: normal;
        }
        .birth > div > span {                
            text-align: center;
            padding: 10px;
            width: 20%;
        }
        .birth > div:nth-child(1) {
            margin: 10px 0;
        }
        .birth > div:nth-child(2) {
            display: flex;
            justify-content: space-between;
            margin: 0;
        }

        .gender > span > select {
            width: 100%;
            height: 25px;
            border: 0;                    
        }
        .gender > span {
            display: block;
            text-align: center;
            padding: 10px;
        }
        .gender > div {
            margin: 10px 0;
        }

        .email > span > input {
            width: 100%;
            height: 25px;
            border: 0;                    
        }
        .email > div > span {
            font-weight: normal;
            border: 0;
            text-align: left;
            color: #8e8e8e;
            padding: 10px 0;
        }
        .email > span {
            display: block;
            text-align: center;
            padding: 10px;
        }
        .email > div {
            margin: 10px 0;
        }

        
        .phone > span > input {
            width: 100%;
            height: 25px;
            border: 0;                    
        }
        .phone > span > select {
            width: 100%;
            height: 25px;
            border: 0;                    
        }
        .phone > span:nth-child(2n+1) {
            display: block;
            text-align: center;
            padding: 10px;
            margin-bottom: 10px;
            width: 70%;
        }
        .phone > span:nth-child(2n) {
            display: block;
            text-align: center;
            padding: 10px;
            margin-bottom: 10px;
        }
        .phone > div {
            display: flex;            
        }
        .phone > div > span {
            display: block;
            text-align: center;
            padding: 10px;
            margin-bottom: 10px;
            width: 70%;
            margin-right: 10px;
        }
        .phone > div > span > input {
            width: 100%;
            height: 25px;
            border: 0;                    
        }
        .phone > div > input {
            width: 30%;
            margin-bottom: 10px;
            background-color: #03c75a;
            font-size: 15px;
            font-weight: bold;
            color: white;
            border: 0;
            cursor: pointer;
        }
        .phone > div:nth-child(1) {
            margin: 40px 0 10px 0;
        }
        .phone > div:nth-child(3) {
            margin: 10px 0 0;
        }

        .btn > input {
            width: 100%;
            height: 50px;
            margin-top: 30px;
            margin-bottom: 30px;
            border: 0;
            background-color: #03c75a;
            font-size: 18px;
            font-weight: bold;
            color: white;
            cursor: pointer;
        }

        .explain1 > div {
            text-align: center;                        
        }        
        .explain1 > div > span:nth-child(2n+1) {
            border: 0;
            background-color: inherit;
            font-weight: normal;
            color: black;
            padding: 0;
        }
        .explain1 > div > span:nth-child(2n) {
            border: 0;
            background-color: inherit;
            font-weight: normal;
            color: #dadada;
            padding: 0;
        }

        .explain2 > div {
            text-align: center;
        }
        .explain2 > div > img {
            width: 63px;
            height: 12px;
            margin-right: 5px;
        }
        .explain2 > div > span {
            border: 0;
            background-color: inherit;
            font-weight: normal;
            padding: 0;
            font-size: 10px;
        }
        

    </style>
</head>
<script type="text/javascript">
	function isEquals(event) {
		event.preventDefault();	// 이벤트의 기본 작동을 막는다
		
		var p1 = document.getElementById('pw').value;
		var p2 = document.getElementById('pwr').value;
		
		if(p1 != p2) {
			alert("비밀번호를 다시 입력해주세요");
		}
		else {
			alert("비밀번호가 일치합니다");
			event.target.submit();
		}
	}
</script>
<body>
    <form action="quiz-result.jsp">
	    <div id="root">
	        <div class="logo">
	            <img src="로고.PNG">
	        </div>
	        <div class="id">
	            <div>아이디</div>
	            <span>
	                <input type="text" name="id" required>
	                <span style="border: 0;">@naver.com</span>                
	            </span>            
	        </div>                
	        <div class="pw">
	            <div>비밀번호</div>
	            <span>
	                <input type="password" name="pw" id="pw" required>                
	            </span>
	        </div>                
	        <div class="pwr">
	            <div>비밀번호 재확인</div>
	            <span>
	                <input type="password" name="pwr" id="pwr" required>                
	            </span>
	        </div>                
	        <div class="name">
	            <div>이름</div>
	            <span>
	                <input type="text" name="name" required>                
	            </span>
	        </div>                
	        <div class="birth">
	            <div>생년월일</div>
	            <div>
	                <span>
	                    <input type="text" name="year" placeholder="년(4자)" required>                      
	                </span>
	                <span>
	                    <select name="month" required>
	                        <option value="">월</option>
	                        <option value="01">1</option>
	                        <option value="02">2</option>
	                        <option value="03">3</option>
	                        <option value="04">4</option>
	                        <option value="05">5</option>
	                        <option value="06">6</option>
	                        <option value="07">7</option>
	                        <option value="08">8</option>
	                        <option value="09">9</option>
	                        <option value="10">10</option>
	                        <option value="11">11</option>
	                        <option value="12">12</option>
	                    </select>
	                </span>
	                <span>
	                    <input type="text" name="day" placeholder="일" required>
	                </span>
	            </div>
	        </div>                
	        <div class="gender">
	            <div>성별</div>
	            <span>
	                <select name="gender" required>
	                    <option value="">성별</option>
	                    <option value="남">남자</option>
	                    <option value="여">여자</option>
	                    <option value="선택 안함">선택 안함</option>
	                </select>
	            </span>
	        </div>                
	        <div class="email">
	            <div>본인 확인 이메일<span>(선택)</span></div>
	            <span>
	                <input type="email" name="email" placeholder="선택입력">
	            </span>
	        </div>                
	        <div class="phone">
	            <div>휴대전화</div>
	            <span>
	                <select name="phone1">
	                    <option value="">대한민국 +82</option>
	                </select>
	            </span>
	            <div>
	                <span>
	                    <input type="text" name="phone2" placeholder="전화번호 입력" required>
	                </span>
	                <input type="button" value="인증번호받기">
	            </div>
	            <span>
	                <input type="text" name="phone3" placeholder="인증번호 입력하세요">
	            </span>
	        </div>                
	        <div class="btn">            
<!-- 	        	<input type="submit" onclick="isEquals()" value="가입하기">             -->
	        	<input type="submit" value="가입하기">            
	        </div>                
	        <div class="explain1">
	            <div>
	                <span>이용약관</span> <span>|</span> <span><strong>개인정보처리방침</strong></span> <span>|</span> <span>책임의 한계와 법적고지</span> <span>|</span> <span>회원정보 고객센터</span>
	            </div>            
	        </div>                
	        <div class="explain2">
	            <div>
	                <img src="로고.PNG"><span>Copyright <strong>NAVER Corp.</strong></span> <span>Rights Reserved.</span>
	            </div>            
	        </div>                     
	    </div>
    </form>   
    
    <script>
    	const form = document.forms[0];
    	form.addEventListener('submit', isEquals);
    </script>

</body>
</html>