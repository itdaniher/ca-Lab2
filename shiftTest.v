module test_sign;
    reg [31:0] TinA, TinB;
    wire [31:0] Tout;

    initial
    begin
        $monitor($time, , Tout, , TinA, ,TinB);
        TinA = 32'b1;
		TinB = 32'd2;
        #100; 
		TinB = 32'd4;
		#100;
		TinB = 32'd8;
		#100;
    end

    shift tester (Tout,TinA, TinB);
endmodule    