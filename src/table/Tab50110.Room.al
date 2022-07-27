table 60110 "Room"
{
    Caption = 'Room';
    DataClassification = ToBeClassified;
    
    fields
    {
        field(10; "Property No."; Code[20])
        {
            Caption = 'Property No.';
            DataClassification = ToBeClassified;
            TableRelation = "Property"."Property No.";
        }
        field(20; "Room No."; Integer)
        {
            Caption = 'Room No. ';
            DataClassification = ToBeClassified;
        }
        field(30; "Room Type "; Option)
        {
            Caption = 'Room Type ';
            OptionMembers = " ", "Lounge", "Kitchen", "Dining Room", "Bedroom", "Bathroom";
            DataClassification = ToBeClassified;
        }
        field(40; Description; Text[50])
        {
            Caption = 'Description';
            DataClassification = ToBeClassified;
        }
        field(50; "Area"; Decimal )
        {
            Caption = 'Area ';
            DataClassification = ToBeClassified;
        }
        field(60; "No of Windows"; Integer )
        {
            Caption = 'No of Windows ';
            DataClassification = ToBeClassified;
        }
    }
    keys
    {
        key(PK; "Property No.", "Room No.")
        {
            Clustered = true;
        }
    }
}
