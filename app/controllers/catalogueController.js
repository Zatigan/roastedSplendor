import dataMapper from "../datamapper/datamapper.js";

const catalogueController = {
  async getAllCoffees(req, res) {
    const query = await dataMapper.getAllCoffees();

    res.render("catalogue", { coffees: query });
  },
};

export default catalogueController;
