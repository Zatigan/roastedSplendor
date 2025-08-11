import client from "../database.js"

const dataMapper = {

async getThreeCoffees() {
    const result = await client.query("SELECT * FROM coffee ORDER BY date DESC LIMIT 3");
    return result.rows;
    }

};

export default dataMapper;