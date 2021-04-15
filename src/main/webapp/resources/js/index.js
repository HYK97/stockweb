//1.입력받으면 입력값 초기화
 //2. 입력값 댓글로들어가기 
   //5. 타임스템프기능

 const inputBar = document.querySelector("#comment-input"); 
 const rootDiv = document.querySelector("#comments"); 
 const btn = document.querySelector("#submit"); 
 const mainCommentCount = document.querySelector('#count'); 
 //맨위 댓글 숫자 세는거. 
 //타임스템프 만들기 
 function generateTime(){ 
    const date = new Date(); 
    const year = date.getFullYear(); 
    const month = date.getMonth()+1; 
    const wDate = date.getDate(); 
    const hour = date.getHours(); 
    const min = date.getMinutes(); 
    const sec = date.getSeconds(); 
    const time = year+'-'+month+'-'+wDate+' '+hour+':'+min+':'+sec; return time; } 
    //유저이름 발생기 //유저이름은 8글자로 제한. 
function numberCount(event){ 
    console.log(event.target); 
    } 
   
 //댓글보여주기 
function showComment(comment){ 
    const userName = document.createElement('div'); 
    const inputValue = document.createElement('span'); 
    const showTime = document.createElement('div'); 
    const countSpan = document.createElement('span'); 
    const commentList = document.createElement('div'); 
    //이놈이 스코프 밖으로 나가는 순간 하나지우면 다 지워지고 입력하면 리스트 다불러옴. 
    
    commentList.className = "eachComment"; userName.className="name"; 
    inputValue.className="inputValue"; showTime.className="time"; 
    
    //입력값 넘기기 
    inputValue.innerText = comment; 

    //타임스템프찍기 
    showTime.innerHTML = generateTime(); countSpan.innerHTML=0; 
  
    //댓글뿌려주기 
    commentList.appendChild(inputValue); 
    commentList.appendChild(showTime); 
    rootDiv.prepend(commentList); 
    console.dir(rootDiv); } 
    //버튼만들기+입력값 전달 
    function pressBtn(){ const currentVal = inputBar.value; 
        if(!currentVal.length){ alert("내용을 입력해주세요!!"); }
        else{ showComment(currentVal); mainCommentCount.innerHTML++; inputBar.value =''; } 
    } 
    btn.onclick = pressBtn;
