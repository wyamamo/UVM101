// UVM uvm_top.top_levels[] array access example
module test;
`include "uvm_macros.svh"
import uvm_pkg::*;

   class my_test extends uvm_component;
  	int d;
  	`uvm_component_utils(my_test)
  	function new(string name="my_test", uvm_component parent=null);
     	super.new(name, parent);
  	endfunction
  	virtual task run();
     	my_test c;
     	super.run();
     	d = 123;
     	// List up top_levels[] array
     	foreach(uvm_top.top_levels[i])
        	`uvm_info("TOPs", $sformatf("top_levels[%0d]\n%s",i, uvm_top.top_levels[i].sprint()),UVM_LOW);
     	// Refer a component member through top_levels[] array
     	assert($cast(c, uvm_top.top_levels[0]));
     	`uvm_info(get_type_name(), $sformatf("top_levels[0].d=%0d\n",c.d),UVM_LOW);
  	endtask
   endclass: my_test

   initial run_test("my_test");
endmodule
