module test;
`include "uvm_macros.svh"
import uvm_pkg::*;

   class my_test extends uvm_component;
  	`uvm_component_utils(my_test)
  	function new(string name="my_test", uvm_component parent=null);
     	super.new(name, parent);
  	endfunction
     virtual task run_phase(uvm_phase phase);
       phase.raise_objection(this,"START");
       super.run();
     	#10 `uvm_info(get_type_name(), "my test is running.", UVM_LOW)
       phase.drop_objection(this,"END");
  	endtask
   endclass: my_test

   initial run_test("my_test");
endmodule
