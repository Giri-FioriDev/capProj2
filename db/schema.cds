namespace capProj2.db;

using {
    cuid,
    managed
} from '@sap/cds/common';

aspect myKey {
    rating : Integer;
};

entity Products : cuid,myKey {
    name     : String(32);
    desc     : String(50);
    price    : Decimal(9, 2);
    discount : Integer;
    stock    : Integer;
}

entity Orders : cuid,managed {
        customerName   : String;
        customerMobile : String(10);
        storeName      : String;
        netPrice       : Decimal(9, 2);
        items          : Association to many OrderItems
                             on items.order = $self; //$self means ID / primary key.
}

entity OrderItems: cuid {
        order : Association to Orders;
        product    : String;
        quantity   : Integer;
        discount   : Integer;
        unitPrice  : Decimal(9, 2);
        totalPrice : Decimal(9, 2);
}
