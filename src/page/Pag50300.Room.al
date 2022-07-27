page 60300 "Room"
{
    ApplicationArea = All;
    Caption = 'Room';
    PageType = ListPart;
    SourceTable = Room;
    UsageCategory = Lists;
   // SourceTableView = 
    
    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("Room No. "; Rec."Room No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Room No.  field.';
                }
                field("Room Type "; Rec."Room Type ")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Room Type  field.';
                }
                field(Description; Rec.Description)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Description field.';
                }
                field("Property No."; Rec."Property No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Property No. field.';
                }
                field("No of Windows"; Rec."No of Windows")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the No of Windows  field.';
                }
                field("Area"; Rec."Area")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Area  field.';
                }
            }
        }
    }

trigger OnOpenPage()
var
begin 
end;
}
