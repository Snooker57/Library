/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
function firstPage1(){
    hide1();
    currPageNum1 = 1;
    showCurrPage1(currPageNum1);
    showTotalPage1();
    for(i = 1; i< pageCount1 + 1; i++){
        blockTable1.rows[i].style.display = "";
    }
    firstText1();
    preText1();
    nextLink1();
    lastLink1();
}

function prePage1(){
    hide1();
    currPageNum1--;
    showCurrPage1(currPageNum1);
    showTotalPage1();
    var firstR = firstRow1(currPageNum1);
    var lastR = lastRow1(firstR);
    for(i = firstR; i < lastR; i++){
        blockTable1.rows[i].style.display = "";
    }

    if(1 == currPageNum1){
        firstText1();
        preText1();
        nextLink1();
        lastLink1();
    }else if(pageNum1 == currPageNum1){
        preLink1();
        firstLink1();
        nextText1();
        lastText1();
    }else{
        firstLink1();
        preLink1();
        nextLink1();
        lastLink1();
    }

}

function nextPage1(){
    hide1();
    currPageNum1++;
    showCurrPage1(currPageNum1);
    showTotalPage1();
    var firstR = firstRow1(currPageNum1);
    var lastR = lastRow1(firstR);
    for(i = firstR; i < lastR; i ++){
        blockTable1.rows[i].style.display = "";
    }

    if(1 == currPageNum1){
        firstText1();
        preText1();
        nextLink1();
        lastLink1();
    }else if(pageNum1 == currPageNum1){
        preLink1();
        firstLink1();
        nextText1();
        lastText1();
    }else{
        firstLink1();
        preLink1();
        nextLink1();
        lastLink1();
    }
}


function lastPage1(){
    hide1();
    currPageNum1 = pageNum1;
    showCurrPage1(currPageNum1);
    showTotalPage1();
    var firstR = firstRow1(currPageNum1);
    for(i = firstR; i < numCount1 + 1; i++){
        blockTable1.rows[i].style.display = "";
    }
    firstLink1();
    preLink1();
    nextText1();
    lastText1();
}

// 计算将要显示的页面的首行和尾行
function firstRow1(currPageNum1){
    return pageCount1*(currPageNum1 - 1) + 1;
}

function lastRow1(firstRow1){
    var lastRow = firstRow1 + pageCount1;
    if(lastRow > numCount1 + 1){
        lastRow = numCount1 + 1;
    }
    return lastRow;
}

function showCurrPage1(cpn1){
    currPageSpan1.innerHTML = cpn1;
}

function showTotalPage1(){
    pageNumSpan1.innerHTML = pageNum1;
}


//隐藏所有行
function hide1(){
    for(var i = 1; i < numCount1 + 1; i ++){
        blockTable1.rows[i].style.display = "none";
    }
}

//控制首页等功能的显示与不显示
function firstLink1(){firstSpan1.innerHTML = "<a href='javascript:firstPage1();'>First</a>";}
function firstText1(){firstSpan1.innerHTML = "First";}

function preLink1(){preSpan1.innerHTML = "<a href='javascript:prePage1();'>Pre</a>";}
function preText1(){preSpan1.innerHTML = "Pre";}

function nextLink1(){nextSpan1.innerHTML = "<a href='javascript:nextPage1();'>Next</a>";}
function nextText1(){nextSpan1.innerHTML = "Next";}

function lastLink1(){lastSpan1.innerHTML = "<a href='javascript:lastPage1();'>Last</a>";}
function lastText1(){lastSpan1.innerHTML = "Last";}