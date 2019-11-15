console.log("RUNNIN");
var delayInMilliseconds = 1; //1000 = 1 second
var body = document.querySelector("#all");
var flyingMom = document.querySelector("#flying-mom");
var curHeight = $(window).height();
var curWidth = $(window).width();
var gradient = 0;
var cOffset = 0;

flyingMom.style.bottom = "300px";

function momTimeoutFunction(){
  setRandLine();
  let i = 0;
  const inter = setInterval(function () {
    i += 10;
    flyingMom.style.left = (i-220) + "px";
    flyingMom.style.bottom =  getBottomOffset(i) + "px";
    if (i > (curWidth)) {
      flyingMom.style.left = "-320px";
      clearInterval(inter);
    }
  }, delayInMilliseconds);
}

function timeoutFunction(){
  setInterval(function () {
    if (getRndInteger(1, 4) === 1) {
      console.log("FLYING MOM INCOMING");
      momTimeoutFunction();
    }
  }, 3000);
}

timeoutFunction();


function getStartX() {
  return 0
}

function getEndX() {
  return curWidth;
}

function getStartY() {
  return getRndInteger(0, curHeight-100);
}

function getEndY() {
  return getRndInteger(0, curHeight-100);
}

function getRndInteger(min, max) {
  return Math.floor(Math.random() * (max - min + 1) ) + min;
}


function setRandLine() {
  gradient = (getEndY()-getStartY())/(getEndX()-getStartX());
  cOffset = getStartY();
}

function getBottomOffset(iteration) {
  //console.log(gradient*iteration + cOffset)
  return gradient*iteration + cOffset;
}

//endY-startY / endX-startX
