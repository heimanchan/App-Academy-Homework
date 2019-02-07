function titleize(names, callback) {
  let title_names = names.map(name => `Mx. ${name} Jingleheimer Schmidt`);
  callback(title_names);
}

// function printCallback(array) {
//   array.forEach(function(element) {
//     console.log(element);
//   });
// }

titleize(["Mary", "Brian", "Leo"], (names) => {
  names.forEach(name => console.log(name));
});

// titleize(["Mary", "Brian", "Leo"], printCallback);
