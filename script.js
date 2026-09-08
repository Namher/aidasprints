// Aidas Prints — small helpers. No libraries.

// Fade sections in as they scroll into view.
var revealItems = document.querySelectorAll(".reveal");
if ("IntersectionObserver" in window) {
  var observer = new IntersectionObserver(
    function (entries) {
      entries.forEach(function (entry) {
        if (entry.isIntersecting) {
          entry.target.classList.add("is-visible");
          observer.unobserve(entry.target);
        }
      });
    },
    { threshold: 0.15 }
  );
  revealItems.forEach(function (item) {
    observer.observe(item);
  });
} else {
  revealItems.forEach(function (item) {
    item.classList.add("is-visible");
  });
}

// Give the sticky header a soft shadow once the page scrolls.
var header = document.querySelector(".site-header");
function updateHeader() {
  header.classList.toggle("is-scrolled", window.scrollY > 12);
}
updateHeader();
window.addEventListener("scroll", updateHeader, { passive: true });

// Keep the footer year current.
var year = document.getElementById("year");
if (year) {
  year.textContent = new Date().getFullYear();
}
