page 60100 "Property"
{
    ApplicationArea = All;
    Caption = 'Property';
    PageType = List;
    SourceTable = Property;
    UsageCategory = Lists;
    CardPageId = "Property Card";
    
    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("Property No."; Rec."Property No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Property No. field.';
                }
                field("House No / Name"; Rec."House No / Name")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the House No / Name field.';
                }
                field("Address Line 1"; Rec."Address Line 1")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Address Line 1 field.';
                }
                field(City; Rec.City)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the City field.';
                }
                field("Post Code "; Rec."Post Code ")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Post Code  field.';
                }
                field("Customer No."; Rec."Customer No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Customer No. field.';
                }
                field("Total No. of Rooms"; Rec."Total No. of Rooms")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Total No. of Rooms field.';
                }
                field("Total Area "; Rec."Total Area ")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Total Area  field.';
                }
                field("Total No. of Windows"; Rec."Total No. of Windows")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Total No. of Windows field.';
                }
            }
        }
    }
}
