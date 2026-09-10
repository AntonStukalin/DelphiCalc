unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    b7: TButton;
    b8: TButton;
    b9: TButton;
    b4: TButton;
    b5: TButton;
    b6: TButton;
    b1: TButton;
    b2: TButton;
    b3: TButton;
    bPlus: TButton;
    bSubstract: TButton;
    bMultiply: TButton;
    bResult: TButton;
    b0: TButton;
    bDivide: TButton;
    eInput: TEdit;
    bClear: TButton;
    procedure NumberButtonClick(Sender: TObject);           //Обработка кнопок 0-9
    procedure OpButtonClick(Sender: TObject);           //Обработка кнопок операций (+ - * /)
    procedure bResultClick(Sender: TObject);            //Обработка кнопки =
    procedure FormCreate(Sender: TObject);              //Обработка создания формы
    procedure bClearClick(Sender: TObject);             //Обработка кнопки очистки
  private
    type
      TAction = (aNone = 0, aAdd = 1, aSubstract = 2, aMultyply = 3, aDivide = 4);  //Тип действия (Tag для кнопок + - * /)
  public
    FAction: TAction;                 //Текущая операция
    FNewNumber: Boolean;              //Флаг ввода
    FOp1, FOp2: Double;               //Хранение операнд
    function TxtToDbl(Str: string): Double;              //Функция перевода строки в число

  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}


procedure TForm1.bClearClick(Sender: TObject);
begin
  eInput.text := '';              //Обнуление поля ввода
  FNewNumber := True;
  FAction := aNone;               //Обнуленпие операции
  FOp1 := 0;                     //Обнуление операнд
  FOp2 := 0;
end;

procedure TForm1.bResultClick(Sender: TObject);
var res: Double;                                    //Переменная хранения результата
begin
  if FNewNumber then Exit;                          //Если ввод нового числа, то выход
  FOp2 := TxtToDbl(eInput.Text);                    //Запись второго операнда
  try
    case FAction of                                 //Проверка типа операции
      aAdd: res := FOp1 + FOp2;
      aSubstract: res := FOp1 - FOp2;
      aMultyply: res := FOp1 * FOp2;
      aDivide:
        begin
          if FOp2 = 0 then
            raise EZeroDivide.Create('Деление на 0');            //Защита от неправильной операции
            res := FOp1 / FOp2;
        end;
    end;
  except
    on E: Exception do
    begin
      ShowMessage('Ошибка вычисления: ' + E.Message);
      bClear.Click;                                               //Вывод ошибки
      Exit;
    end;
  end;
  eInput.Text := res.ToString;       //Вывод результата в поле ввода
  FNewNumber := True;
  FAction := aNone;                //Обнуленпие операции
  FOp1 := 0;                      //Обнуление операнд
  FOp2 := 0;


end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  FNewNumber := True;                             //Ожидание ввода числа при запуске программы
end;


procedure TForm1.NumberButtonClick(Sender: TObject);
var
  s: string;
begin
  if FNewNumber then                                          //Если ввод нового числа, то поправить
    begin
      eInput.Text := '';                                     //Очистить поле ввода
      FNewNumber := False;                                      //Опустить флаг ввода нового числа
    end;
  s := (Sender as TButton).Caption;                           //Получить текст кнопки
  if eInput.Text = '0' then                                //Проверить текущее значение в поле ввода
    begin
      if s = '0' then Exit;                                     //Если нажали на 0, то выйти
      eInput.Text := s;                                      //Изменить текст в поле ввода на значение нажатой кнопки
      Exit;                                                     //Выход
    end;
  eInput.Text := eInput.Text + s;
end;

procedure TForm1.OpButtonClick(Sender: TObject);
begin
  FAction := TAction((Sender as TButton).Tag);                //Получение Tag кнопки операции
  FOp1 := TxtToDbl(eInput.Text);                              //Присваивание первого операнда
  FNewNumber := True;
end;

function TForm1.TxtToDbl(Str: string): Double;
begin
  if not TryStrToFloat(Str, Result) then Result := 0;          //Перевод текста в число, при ошибке - 0
end;

end.
