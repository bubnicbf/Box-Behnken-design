/*
 returns a Box-Behnken design for the given number of factors
 */
 
 function x = BoxBehnken ( dim_num, x_num, range )

  if ( any ( range(1:dim_num,2) <= range(1:dim_num,1) ) )
    fprintf ( 1, '\n' );
    fprintf ( 1, 'BOX_BEHNKEN - Fatal error!\n' );
    fprintf ( 1, '  For some index I,\n' );
    fprintf ( 1, '  RANGE(I,2) <= RANGE(I,1).\n' );
    error ( 'BOX_BEHNKEN - Fatal error!' );
  end
%
%  The first point is the center.
%
  j = 1;

  x(1:dim_num,j) = ( range(1:dim_num,1) + range(1:dim_num,2) ) / 2.0;
%
%  For subsequent elements, one entry is fixed at the middle of the range.
%  The others are set to either extreme.
%
  for i = 1 : dim_num

    j = j + 1;

    x(1:dim_num,j) = range(1:dim_num,1);
    x(i,j) = ( range(i,1) + range(i,2) ) / 2.0;
%
%  The next element is made by finding the last low value, making it
%  high, and all subsequent high values low.
%
    while ( 1 )

      last_low = -1;

      for i2 = 1 : dim_num
        if ( x(i2,j) == range(i2,1) )
          last_low = i2;
        end
      end

      if ( last_low == -1 )
        break
      end

      j = j + 1;
      x(1:dim_num,j) = x(1:dim_num,j-1);
      x(last_low,j) = range(last_low,2);

      for i2 = last_low + 1 : dim_num
        if ( x(i2,j) == range(i2,2) )
          x(i2,j) = range(i2,1);
        end
      end

    end

  end

  return
end
