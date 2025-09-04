unit IUser;

{$mode ObjFPC}{$H+}

interface

type
    IUser = interface
          {GUID} ['{F4E54BE0-77A4-4BC1-89CB-8CF6F2E2ACD4}']

          // Methods Getters
          function GetId:    Integer;
          function GetName:  string;
          function GetUser:  string;
          function GetPass:  string;
          function GetEmail: string;
          function GetPhone: Integer;

          // Attributes
          property id:    Integer read GetId;
          property name:  string read GetName;
          property user:  string read GetUser;
          property pass:  string read GetPass;
          property email: string read GetEmail;
          property phone: Integer read GetPhone;




    end;

implementation

end.

