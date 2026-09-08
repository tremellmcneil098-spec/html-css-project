// -------------------------
// Mobile Menu
// -------------------------

const menuButton = document.getElementById("menuButton");
const navLinks = document.querySelector(".nav-links");

menuButton.addEventListener("click", function () {
    navLinks.classList.toggle("active");
});


// -------------------------
// Learn More Button
// -------------------------

const learnButton = document.getElementById("learnButton");

learnButton.addEventListener("click", function () {

    document.getElementById("about").scrollIntoView({
        behavior: "smooth"
    });

});


// -------------------------
// Contact Form
// -------------------------

const contactForm = document.getElementById("contactForm");

contactForm.addEventListener("submit", function (event) {

    event.preventDefault();

    const name = document.getElementById("name").value;

    alert("Thanks for contacting us, " + name + "!");

    contactForm.reset();

});
