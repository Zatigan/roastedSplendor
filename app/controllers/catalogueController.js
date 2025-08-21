import dataMapper from "../datamapper/datamapper.js";

const catalogueController = {
  async getAllCoffees(req, res) {
    const query = await dataMapper.getAllCoffees();

    res.render("catalogue", { coffees: query });
  },

  async getCoffeeByCategory(req, res) {
    const query = await dataMapper.coffeeByCategory(req.params.categoryId);

    res.render("catalogue", { coffees: query });
  },
};

export default catalogueController;
