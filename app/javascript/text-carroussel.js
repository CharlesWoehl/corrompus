console.log("Hello from app/javascript/packs/text-carroussel.js")

const carouselText = [
  { text: "Meurtre", color: "#FF0057" },
  { text: "Fraude fiscale", color: "#FF0057" },
  { text: "Violence conjugale", color: "#FF0057" }
];
document.addEventListener("DOMContentLoaded", async function(event) {
  carousel(carouselText, "#feature-text")
});

// $(document).ready(async function () {
//   carousel(carouselText, "#feature-text");
// });

async function typeSentence(sentence, eleRef, delay = 100) {
  const letters = sentence.split();
  let i = 0;
  while (i < letters.length) {
    await waitForMs(delay);
    const element = document.querySelector(eleRef);
    element.innerText += letters[i];
    i++;
  }
  return;
}

async function deleteSentence(eleRef) {
  const element = document.querySelector(eleRef);
  const sentence = element.innerText;
  const letters = sentence.split("");
  let i = 0;
  while (letters.length > 0) {
    await waitForMs(100);
    letters.pop();
    const element = document.querySelector(eleRef);
    // element.innerHTML = letters.join("");
    element.innerText = letters.join("");
  }
}

async function carousel(carouselList, eleRef) {
  var i = 0;
  while (true) {
    updateFontColor(eleRef, carouselList[i].color);
    await typeSentence(carouselList[i].text, eleRef);
    await waitForMs(1500);
    await deleteSentence(eleRef);
    await waitForMs(500);
    i++;
    if (i >= carouselList.length) {
      i = 0;
    }
  }
}

function updateFontColor(eleRef, color) {
  const element = document.querySelector(eleRef);
  element.style.color = color;

  //  $(eleRef).css("color", color);
}

function waitForMs(ms) {
  return new Promise((resolve) => setTimeout(resolve, ms));
}
