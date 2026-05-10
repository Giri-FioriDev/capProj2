using {capProj2.db as capProjdb} from '../db/schema';

service capProj2Service {

    entity Products as projection on capProjdb.Products;
    entity Orders as projection on capProjdb.Orders;
    entity OrderItems as projection on capProjdb.OrderItems;

}
