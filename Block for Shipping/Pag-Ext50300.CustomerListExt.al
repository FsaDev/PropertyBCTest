pageextension 50300 "Customer List Ext" extends "Customer List"
{
    actions
    {
        addlast(General)
        {
            action(ActionName)
            {
                ApplicationArea = All;
                Promoted = true;
                PromotedCategory = Process;
                PromotedIsBig = true;
                //PromotedOnly = true;
                Caption = 'Blocked for Shipping';

                trigger OnAction()
                var
                    BlockForShippingL: Codeunit "Block For Shipping";
                    CustL: Record "Customer";
                begin

                    // Clear(CustL);
                    // CustL.CopyFilters(Rec);
                    // BlockForShippingL.CheckCustomersForBlocking(Rec);
                    
                    if BlockForShippingL.Run(Rec) then
                        Message('Process Finished Successfully')
                    else
                        Error('Process Failed to Update Blocked Customers for Shipping');
                end;
            }

        }

    }
}
