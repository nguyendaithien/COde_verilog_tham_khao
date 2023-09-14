#!/bin/bash
folder_path=$(pwd)
for x in 1 2 3 4 5 6 7 8
do
	touch "sub_$x.v"
	echo "created file verilog: $x"
	echo "module sub_$x();
	    implement code
endmodule" > "$folder_path/sub_$x.v"
done
