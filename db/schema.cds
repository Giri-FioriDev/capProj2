namespace capProj2.db;
entity Products {
    key prdId    : String(6);
        name     : String(32);
        desc     : String(50);
        price    : Decimal(9, 2);
        discount : Integer;
        stock    : Integer;
}

entity Orders {
    key ID             : String;
        customerName   : String;
        customerMobile : String(10);
        storeName      : String;
        netPrice       : Decimal(9, 2);
        items : Association to many OrderItems on items.orderId = ID ;
}

entity OrderItems {
    key ID         : String;
        orderId    : String;
        product    : String;
        quantity   : Integer;
        discount   : Integer;
        unitPrice  : Decimal(9, 2);
        totalPrice : Decimal(9, 2);
}
