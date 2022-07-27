pageextension 60100 "Customer Card Ext" extends "Customer Card"
{
    actions
    {
        addlast("&Customer")
        {

            action(ActionName)
            {
                ApplicationArea = All;
                Promoted = true;
                PromotedIsBig = true;
                PromotedCategory = New;
                Caption = 'Property';

                trigger OnAction()
                var 
                    PropertyL: Record "Property";
                begin
                    //Get Selection Filter
                    Clear(PropertyL);
                    PropertyL.SetRange("Customer No.", Rec."No.");
                    Page.run(60100, PropertyL);

                end;
            }

        }



    }

}
