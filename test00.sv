// UVM single component sample
module test;
`include "uvm_macros.svh"
import uvm_pkg::*;

   class my_test extends uvm_component;
  	`uvm_component_utils(my_test)
  	function new(string name="my_test", uvm_component parent=null);
     	super.new(name, parent);
  	endfunction
  	virtual task run();
     	super.run();
     	`uvm_info(get_type_name(), "my test is running.", UVM_LOW)
  	endtask
   endclass: my_test

   initial run_test("my_test");
endmodule
