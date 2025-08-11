//* Importing Client module from pg package
import { Client } from "pg";

//* Set a varable for the db connection
const client = new Client(process.env.PG_URL);

//*Asking the client to connect to the db
client.connect();

//*Exporting the client variable in order to use it in other files
//*Using default export allow to customize the import name in other files
export default client;