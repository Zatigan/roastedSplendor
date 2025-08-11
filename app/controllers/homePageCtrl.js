import dataMapper from '../datamapper/datamapper.js';

const homePageCtrl = {
    async lastCoffees(req, res) {
        const query = await dataMapper.getThreeCoffees();

        res.render('index', { coffees: query });
    }
}

export default homePageCtrl;