pageextension 50007 CustomerCardExt extends "Customer Card"
{
    layout
    {
        modify(Name)
        {
            trigger OnAfterValidate()
            var
                TranslationManagement: Codeunit TranslationManagement;
            begin
                if Name.EndsWith('.com') then begin
                    if confirm('Do you want to retrieve company details?', false) then
                        TranslationManagement.LookupAddressInfo(Name, Rec);
                end;
            end;
        }
    }
}