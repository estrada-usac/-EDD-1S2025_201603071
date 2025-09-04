unit UnitLogin;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, StdCtrls, Dialogs,
  LoginLogic, User;

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
    Users: IUserList; // Users List
    LoginLogic: TLoginLogic; // Instance LoginLogic
    procedure InitializeUsers; // FOr Initialize Users List

  public
    constructor Create(AOwner: TComponent); override;
  end;

var
  FormLogin: TFormLogin;

implementation

{$R *.lfm}

{ TFormLogin }

constructor TFormLogin.Create(AOwner: TComponent);
begin
     inherited Create(AOwner);

// Initialize Users List And Login Logic
Users := TUserList.Create;
InitializeUsers;
LoginLogic := TLoginLogic.Create(Users);
end;

procedure TFormLogin.InitializeUsers;
var
  u1, u2: IUser;
begin
     u1 := TUser.Create(1, 'Administrador', 'admin', '1234', 'correo', 24341);
     u2 := TUser.Create(2, 'Erick Estrada', 'Estrada96', '201603071', 'usac.erickestrada@gmail.com', 201603071);

     Users.AddUser(u1);
     Users.AddUser(u2);
end;

procedure TFormLogin.BtnLoginClick(Sender: TObject);
begin
     if LoginLogic.Authenticate(EditUser.Text, EditPass.Text) then
        ShowMessage('¡Login Correcto!')
     else
         ShowMessage('Usuario o Contraseña Incorrectos');
end;

end.



