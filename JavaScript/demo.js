var a  = prompt("Enter a number");

// If - Else
if(a>0){
    alert("The number is greater than 0.")
} else if(a == 0){
    alert("The number is equal to 0.")
} else{
    alert("The number is less than 0.")
}

// Creating a function(1st way)
function display1(){
    console.log("Hey Rakshit");
}

// Creating a function(2nd way)
var display2 = function(){
    console.log("Hello Rakshit");
}

// Creating a function with return
function add(a, b){
    var c =  a + b;
    return c;
}

function diff(d){
    var d = add(1,4) - d;
    return d;
}

// To print
console.log(diff(3));

// Creating object
var student={
    name : "Rakshit Pandey",
    class : "2nd Year",
    all_rounder : true,
    siblings : ["Hey", "Hello", "Wasssup"]
}

// Defining a property outside the object
student.roll = "21BCE10783";

// To print
console.log(student.roll);

// Objects inside an array
var classroom=[
    {
        name : "Rakshit Pandey",
        roll : "1"
    },
    {
        name : "Pandey",
        roll : "2"
    }
]

console.log(classroom[0].name);

//Event Listner
var h1 = document.querySelector("h1");
var input = document.querySelector("input");
var button = document.querySelector("button");

button.addEventListener("click", abc);

function abc(){
    h1.innerHTML = input.value;
}

//De-structing in JS
const car = {
    color : "Black",
    model : "BMW",
    isAutomatic : false,
};

function printer({color, model, isAutomatic}){
    console.log(color, model, isAutomatic);
}

printer(car);
