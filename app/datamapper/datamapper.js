import client from "../database.js";

const dataMapper = {
  async getThreeCoffees() {
    const result = await client.query(
      "SELECT * FROM coffee ORDER BY date DESC LIMIT 3"
    );
    return result.rows;
  },

  async getAllCoffees() {
    const result = await client.query("SELECT * FROM coffee");
    return result.rows;
  },

  async getOneCofffee() {
    const result = await client.query("SELECT * FROM coffees WHERE name = $1");
    return result.rows;
  },
};

export default dataMapper;
