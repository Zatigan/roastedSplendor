import client from "../database.js";

const dataMapper = {
  async getThreeCoffees() {
    const result = await client.query(
      "SELECT * FROM coffee ORDER BY created_at DESC LIMIT 3"
    );
    return result.rows;
  },

  async getAllCoffees() {
    const result = await client.query("SELECT * FROM coffee");
    return result.rows;
  },

  /*Trouver le moyen de récupérer l'info du café à cibler */
  /*   async getOneCofffee() {
    const result = await client.query(
      "SELECT * FROM coffees WHERE 
    );
    return result.rows; 
  },*/

  /*passez l'info de l'url avec query params ou autre ?*/
  async coffeeByCategory(id) {
    const result = await client.query({
      text: "SELECT * FROM coffee WHERE category_id = $1",
      values: [id],
    });
    return result.rows;
  },
};

export default dataMapper;
