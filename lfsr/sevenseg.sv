module sevenseg(input logic [6:0] data,
		    output logic [6:0] segments);

//convert hex to to 7 segment output
always_comb	
	case(data)
			7'h41:		segments = 7'h08;		//A
			7'h42:		segments = 7'h03;		//B
			7'h43:		segments = 7'h27;		//C
			7'h44:		segments = 7'h21;		//D
			7'h45:		segments = 7'h06;		//E
			7'h46:		segments = 7'h0E;		//F
			7'h47:		segments = 7'h02;		//G
			7'h48:		segments = 7'h0B;		//H
			7'h49:		segments = 7'h79;		//I
			7'h4A:		segments = 7'h71;		//J
			7'h4B:		segments = 7'h0A;		//K
			7'h4C:		segments = 7'h47;		//L
			7'h4D:		segments = 7'h2A;		//M
			7'h4E:		segments = 7'h2B;		//N
			7'h4F:		segments = 7'h23;		//O
			7'h50:		segments = 7'h0C;		//P
			7'h51:		segments = 7'h18;		//Q
			7'h52:		segments = 7'h2F;		//R
			7'h53:		segments = 7'h12;		//S
			7'h54:		segments = 7'h07;		//T
			7'h55:		segments = 7'h63;		//U
			7'h56:		segments = 7'h55;		//V
			7'h57:		segments = 7'h19;		//W
			7'h58:		segments = 7'h6B;		//X
			7'h59:		segments = 7'h11;		//Y
			7'h5A:		segments = 7'h24;		//Z
		default: segments = 7'h40;
	endcase
endmodule
