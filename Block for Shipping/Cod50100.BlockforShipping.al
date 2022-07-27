codeunit 50100 "Block for Shipping"
{
    TableNo = Customer;

    trigger OnRun()
    begin
        CheckCustomersForBlocking(Rec);
    end;

    procedure CheckCustomersForBlocking(var CustP: Record "Customer")
    var
        CustTempL: Record "Customer" temporary;
    begin
        if not CustTempL.IsTemporary then
            EXIT;

        CustTempL.Reset();
        CustTempL.DeleteAll();

        // Message('Count CustL Codeunit %1', CustL.Count);

        // run using a different data item to the one passed in from the page
        if CustP.FindSet() then begin
            repeat
                CustTempL.Init();
                CustTempL.TransferFields(CustP);
                CustTempL.Insert();
            until CustP.Next() = 0;
        end;

        // Message('Count Cust Temp %1', CustTempL.Count);
        // Message('Count >2000 : %1', CustTempL.Count);

        CustTempL.SetAutoCalcFields("Balance (LCY)");
        CustTempL.SetFilter("Balance (LCY)", '>20000');

        //??? Filter values that are >20000 and already blocked::ship -> ignore

        If CustTempL.FindSet() then begin
            repeat
                CustTempL.Validate(Blocked, CustTempL.Blocked::Ship);
                //Message('Customer: %1 unBlocked | Balance LCY: %2', CustTempL.Name, CustTempL."Balance (LCY)");
                CustTempL.Modify();
            until CustTempL.Next() = 0;
        end;
        Page.RunModal(22, CustTempL);
    end;

}
