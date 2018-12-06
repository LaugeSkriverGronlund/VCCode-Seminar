pageextension 50101 "CSD ResourceListExt" extends "Resource List"
{
    layout
    {
        modify(type)
        {
            Visible = ShowType;

        }


        addafter(type)
        {

            field("CSD Resource Type"; "CSD Resource Type")

            {

            }
            field("CSD Maximum Participants"; "CSD Maximum Participants")
            {

                Visible = ShowMaxField;
            }


        }

    }

    actions
    {
        // Add changes to page actions here
    }

    trigger OnOpenPage()
    begin
        ShowType := (GetFilter(Type) = '');
        ShowMaxField :=
        (GetFilter(Type) = format(Type::machine));

    end;

    var
        ShowType: boolean;
        ShowMaxField: Boolean;

}