document.addEventListener("DOMContentLoaded", () => {
  // toggling restaurants

  const toggleLi = (e) => {
    const li = e.target;
    if (li.className === "visited") {
      li.className = "";
    } else {
      li.className = "visited";
    }
  };

  document.querySelectorAll("#restaurants li").forEach((li) => {
    li.addEventListener("click", toggleLi);
  });



  // adding SF places as list items

  // --- your code here!
  const sfPlaceFormEl = document.getElementById("place-form");
  sfPlaceFormEl.addEventListener("submit", e => {
    e.preventDefault();

    // Get the name input element (type `HTMLInputElement`), get the
    // value, and clear it.
    const sfPlaceInputEl = document.getElementsByClassName("favorite-input");
    const placeName = sfPlaceInputEl.value;
    sfPlaceInputEl.value = "";

    const ul = document.getElementById("sf-places");
    const li = document.createElement("li");
    li.textContent = placeName;

    ul.appendChild(li);
  });


  // adding new photos

  // --- your code here!



});
