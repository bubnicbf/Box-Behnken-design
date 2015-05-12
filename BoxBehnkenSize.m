/*
 returns the size of a Box-Behnken design
 */
 function x_num = BoxBehnkenSize ( dim_num )

  if ( 1 <= dim_num )
    x_num = 1 + dim_num * 2^( dim_num - 1 );
  else
    x_num = -1;
  end

  return
end
