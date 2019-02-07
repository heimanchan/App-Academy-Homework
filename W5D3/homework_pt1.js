// Fundamentals

function madLib(verb, adj, noun) {
  return `We shall ${verb.toUpperCase()} the ${adj.toUpperCase()} ${noun.toUpperCase()}`;
}

console.log(madLib("make", "best", "guac"));

function isSubstring(searchString, subString) {
  return searchString.includes(subString);
}
console.log(isSubstring("time to program", "time"));

// Looping

function fizzBuzz(array) {
  let result = [];
  for(let i = 0; i < array.length; i++) {
    if (array[i] % 3 === 0) {
      result.push(array[i]);
    }
    else if (array[i] % 5 === 0) {
      result.push(array[i]);
    }
  }
  return result;
}
console.log(fizzBuzz([1,2,3,4,5,6,7,8,9]));

function isPrime(num) {
  if (num === 2) {
    return true;
  }
  for(let i = 2; i < num; i++) {
    if (num % i === 0) {
      return false;
    }
  }
  return true;
}
console.log(isPrime(11));
console.log(isPrime(12));

function sumOfNPrimes(n) {
  var count = 0;
  let sum = 0;
  for (let i = 2; count < n; i++) {
    if (isPrime(i)) {
      sum += i;
      count++;
    }
  }
  return sum;
}
console.log(sumOfNPrimes(0));
console.log(sumOfNPrimes(1));
console.log(sumOfNPrimes(4));
