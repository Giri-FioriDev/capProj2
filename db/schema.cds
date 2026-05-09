namespace capProj2.db;

entity Products {
    key prdId : String(6);
    name : String(32);
    desc : String(50);
    price : Decimal(9,2);
    discount : Integer;
    stock : Integer;
};
