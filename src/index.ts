import 'dotenv/config';

let counter = 0
const main = async () => {	
	console.log(process.env.TEST_ENV);
	counter++
	// if(counter > 2) delete process.env.TEST_ENV

  await new Promise((resolve, reject) => setTimeout(resolve, 2_000));
  await main();
};

main()
  .then()
  .catch((err) => console.log(err));
