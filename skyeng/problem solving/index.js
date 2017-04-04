function canChange(n, a, b, c) {
	const arr = new Array(n + 1);
  const coins = [a, b, c];
  arr[0] = true;
  for(let i = 0; i < arr.length; i++) {
  	for(let coin of coins) {
    	if (i - coin >= 0) {
      	arr[i] = !!arr[i - coin];
      }
    }
  }
  return arr[n];
}

// test
console.log(canChange(140, 1, 2, 5));
console.log(canChange(10000, 13, 999999, 99));