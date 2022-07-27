table 60100 "Property"
{
    Caption = 'Property';
    DataClassification = ToBeClassified;
    
    fields
    {
        field(10; "Property No."; Code[20])
        {
            Caption = 'Property No.';
            DataClassification = ToBeClassified;
            trigger OnValidate()
            var
                NoSeriesMgtL: Codeunit NoSeriesManagement;
            begin
                //Rec.Validate("Property No.", NoSeriesMgtL.GetNextNo('PROP', Today, true) ); 
                if "Property No." <> xRec."Property No." then begin
                    //SalesSetup.Get();
                    // NoSeriesMgt.TestManual(SalesSetup."Book Nos.");
                    NoSeriesMgtL.GetNextNo('PROP', WorkDate(), true);
                    "No. Series" := '';
                end;
            end;

        }
        field(20; "House No / Name"; Text[50])
        {
            Caption = 'House No / Name';
            DataClassification = ToBeClassified;
        }
        field(30; "Address Line 1"; Text[50])
        {
            Caption = 'Address Line 1';
            DataClassification = ToBeClassified;
        }
        field(40; City; Text[50])
        {
            Caption = 'City';
            DataClassification = ToBeClassified;
        }
        field(50; "Post Code "; Text[20])
        {
            Caption = 'Post Code ';
            DataClassification = ToBeClassified;
        }
        field(60; "Customer No."; Code[20])
        {
            Caption = 'Customer No.';
            DataClassification = ToBeClassified;
            TableRelation = "Customer"."No.";
 
        }
        field(70; "Total No. of Rooms"; Integer)
        {
            Caption = 'Total No. of Rooms';
            FieldClass = FlowField;
            CalcFormula = count(Room Where("Property No." = field("Property No.")));
        }
        field(80; "Total Area "; Decimal)
        {
            Caption = 'Total Area ';
            FieldClass = FlowField;
            CalcFormula = Sum(Room."Area" where ("Property No." =field("Property No.")));
        }
        field(90; "No of Bedrooms"; Integer)
        {
            Caption = 'No of Bedrooms';
            FieldClass = FlowField;
            CalcFormula = count(Room where("Room Type " = const("Bedroom"), "Property No." = field("Property No.")));
        }
        field(100; "Total No. of Windows"; Integer)
        {
            Caption = 'Total No. of Windows';
                 FieldClass = FlowField;
            CalcFormula = Sum(Room."No of Windows" Where("Property No." = field("Property No.")));
        }

        field(110; "No. Series"; Code[20])
        {
            Caption = 'No. Series';
            Editable = false;
            TableRelation = "No. Series";
        }
    }
    keys
    {
        key(PK; "Property No.")
        {
            Clustered = true;
        }
    }
    trigger OnInsert()
    var
    NoSeriesMgtL: Codeunit NoSeriesManagement;
    begin
        if "Property No." = '' then begin
            //SalesSetup.Get();
            //SalesSetup.TestField("Book Nos.");
            NoSeriesMgtL.InitSeries('PROP', xRec."No. Series", 0D, "Property No.", "No. Series");
        end;
    end;
}
