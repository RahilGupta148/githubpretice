Create Table Oprection
(
  In1 Int NOT NULL,
  In2 Int Not NULL,
  opr varchar(20) NOT NULL
  )

CREATE PROCEDURE Calculater @In1 Int, @In2 Int, @opr varchar(20)
AS
	if(@opr='+')
	Begin
		select cast (@In1+@In2 as int)
	End
  else if(@opr='-')
	Begin
		select cast (@In1-@In2 as int)
	End
	 else if(@opr='*')
	Begin
		select cast (@In1*@In2 as int)
	End
	 else if(@opr='/')
	Begin
		select cast (@In1/@In2 as int)
	End
	else 
	Begin
		select 'Invalid Operator'
	End

	exec Calculater @In1=3, @In2=4,@opr='+'

