async function slow() {
  return new Promise(function(resolve, reject) {
      setTimeout(function() {
          console.log("slow finished");
          resolve();
      }, 3000);
  });
}

function fast() {
  console.log("fast");
}

async function run() {
  await slow();
  fast();
}

run();