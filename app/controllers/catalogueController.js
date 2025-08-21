import dataMapper from "../datamapper/datamapper.js";

const catalogueController = {
  async getAllCoffees(req, res) {
    const query = await dataMapper.getAllCoffees();

    res.render("catalogue", { coffees: query });
  },

  async getCoffeeByCategory(req, res) {
    // Getting required category in URL
    const id = req.params.id;

    // Sending needed datas to dataMapper to make SQL request
    const query = await dataMapper.coffeeByCategory(id);

    res.render("catalogue", { coffees: query });
  },
};

export default catalogueController;
