pageextension 50102 "CSD ResourceCardExt" extends "Resource Card"
{
    layout
    {
        // Add changes to page layout here

        addlast(General)
        {
                    
            field("CSD Quantity Per Day";"CSD Quantity Per Day")
            {

            }

            field("CSD Resource Type";"CSD Resource Type")
            {

            }
            

        }
        addafter("Personal Data")
        {
            group("CSD Room")
            {
                Caption = 'Room';
                Visible = ShowField;
            
                field("CSD Maximum Participants";"CSD Maximum Participants")
                
                {

                }
            }
        }
        
    }
    
    actions
    {
        // Add changes to page actions here
    }

    trigger OnAfterGetRecord()
    
    begin
        ShowField := (Type = Type::Machine);
        CurrPage.Update(false);    
    end;

    var
        ShowField: Boolean;

}