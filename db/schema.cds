namespace capProj2.db;

using {
    cuid,
    managed
} from '@sap/cds/common';

aspect myKey {
    rating : Integer;
};

entity Products : cuid, myKey {
    name     : String(32);
    desc     : String(50);
    price    : Decimal(9, 2);
    discount : Integer;
    stock    : Integer;
}

entity Orders : cuid, managed {
    customerName   : String;
    customerMobile : String(10);
    storeName      : String;
    netPrice       : Decimal(9, 2);
    //1...n
    items          : Composition of many OrderItems
                         on items.order = $self; //$self means ID / primary key.
}

entity OrderItems : cuid {
    // 1...1
    order      : Association to Orders; // 1. creates a new field order_ID (field_<primarykey of associated entiry>)  2.Also creates a navigation property
    product    : Association to Products; // navigation and product_ID will be created
    quantity   : Integer;
    discount   : Integer;
    unitPrice  : Decimal(9, 2);
    totalPrice : Decimal(9, 2);
}
