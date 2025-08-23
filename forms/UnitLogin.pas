unit UnitLogin;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, StdCtrls, Dialogs,
  LoginLogic;  // incluimos nuestra unidad de lógica

type

  { TFormLogin }

  TFormLogin = class(TForm)
    BtnLogin: TButton;
    EditUser: TEdit;
    EditPass: TEdit;
    LMailEDD: TLabel;
    LUsuario: TLabel;
    LPassword: TLabel;
    LRegistrar: TLabel;
    procedure BtnLoginClick(Sender: TObject);

  private

  public

  end;

var
  FormLogin: TFormLogin;

implementation

{$R *.lfm}

{ TFormLogin }

procedure TFormLogin.BtnLoginClick(Sender: TObject);
begin
     if ValidateLogin(EditUser.Text, EditPass.Text) then
        ShowMessage('¡Login Correcto!')
     else
         ShowMessage('Usuario o Contraseña Incorrectos');
end;

end.



