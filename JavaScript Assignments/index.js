


function checkNames(dog_string, dog_names) {
    for (let name of dog_names) {
      if (dog_string.includes(name)) {
        console.log(`${name} is in the string.`);
      } else {
        console.log(`${name} is not in the string.`);
      }
    }
  };

let dog_string = "Hello Max, my name is Dog, and I have purple eyes!"
let dog_names = ["Max","HAS","PuRple","dog"]


checkNames(dog_string, dog_names)


function replaceEvens(arr) {
    for (let i = arr.length - 1; i >= 0; i--) {
      if (i % 2 === 0) {
        arr.splice(i, 1, "even index");
      }
    }
  }

  names = ["Max","Baseball","Reboot","Goku","Trucks","Rodger"]

  replaceEvens(names)
  console.log(names)
