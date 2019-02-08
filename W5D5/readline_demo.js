const readline = require('readline');

const reader = readline.createInterface({
  input: process.stdin,
  output:process.stdout
});

reader.question("what?", function (answer) {
  console.log(`Hel9lo ${answer}!`);
});

console.log("Last program line");

reader.close();