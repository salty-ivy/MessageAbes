// console.log("admadmalkdkalmd");
const burger = document.getElementById("burger");
const links = document.getElementById("nav-links");

console.log(burger);
console.log(links);


burger.addEventListener("click", ()=>{
	links.classList.toggle("is-active");
})