module lfsr(input logic 			clk, 		//clk input
		   input logic   		 	reset,	//reset input
		   input logic 		[3:0] q, 		//Seed value
		   input logic         	 	push,		//push trigger
		   output logic 		[6:0] segment1,	//first letter
		   output logic		[6:0] segment2,	//second letter
		   output logic		[6:0] segment3,	//third  letter
		   output logic		[6:0] segment4);	//fourth letter

logic path;   						// is the tap
								// bts is the seeds
logic [3:0] bts, character, y;			// character is character name, y is the new number generated				
logic [6:0] first, second, third, fourth; 	//each letter in character name



		
//changes the randomness
always_ff@(posedge clk, posedge reset) 		//positive clock edge and reset
	if(reset) 		y = 4'h1;			//default to first character upon reset
	else	
	begin						
								//xor the bits
		path = y[0] ^ y[1];			//adjust the seeds for randomness
		y = {path, y[3:1]};			// shifts the bits and sets it to y
	end



//either output character or keep generating
always_ff@(posedge push, posedge reset) 		//positive edge of push
if(reset)  character = 4'h1;				//if pushed then output seven segment value
else      character = y; 				//otherwise keep randomizing
		


//character selected to output 
// on seven segment module 
always_ff@(posedge push)				// positive edge of push
	case(character)					// chooses a character 
		4'h0:	
		begin 
			first = 7'h56;	//V
			second = 7'h45;	//E
			third = 7'h4E;	//N
			fourth = 7'h54;	//T
		end
	
		4'h1:
		begin
			first = 7'h43;	//C
			second = 7'h48;	//H
			third = 7'h4F;	//O
			fourth = 7'h4E;	//N
		end

		4'h2:
		begin
			first = 7'h45;	//E
			second = 7'h55;	//U
			third = 7'h4C;	//L
			fourth = 7'h41;	//A
		end

		4'h3:
		begin
			first = 7'h54;	//T
			second = 7'h48;	//H
			third = 7'h4F;	//O
			fourth = 7'h4D;	//M
		end

		4'h4:
		begin
			first = 7'h43; 	//C
			second = 7'h48;	//H
			third = 7'h49;	//I
			fourth = 7'h4C;	//L
		end

		4'h5:
		begin
			first = 7'h49;	//I
			second = 7'h54;	//T
			third = 7'h54;	//T
			fourth = 7'h4F;	//O
		end

		4'h6:
		begin
			first = 7'h41;	//A
			second = 7'h59;	//Y
			third = 7'h41;	//A
			fourth = 7'h4B;	//K
		end

		4'h7:
		begin
			first = 7'h44;	//D
			second = 7'h49;	//I
			third = 7'h4C;	//L
			fourth = 7'h55;	//U
		end
		   
		4'h8:
		begin
			first = 7'h5A;	//Z
			second = 7'h48;	//H
			third = 7'h4F;	//O
			fourth = 7'h4E;	//N
		end

		4'h9:
		begin
			first = 7'h4B;	//K
			second = 7'h41;	//A
			third = 7'h45;	//E
			fourth = 7'h59;	//Y
		end

		4'ha:
		begin
			first = 7'h41;	//A
			second = 7'h4C;	//L
			third = 7'h42;	//B
			fourth = 7'h45;	//E
		end

		4'hb:
		begin
			first = 7'h42;	//B
			second = 7'h41;	//A
			third = 7'h52;	//R
			fourth = 7'h41;	//B
		end

		4'hc:
		begin
			first = 7'h42;	//B
			second = 7'h45;	//E
			third = 7'h49;	//I
			fourth = 7'h44;	//D
		end

		4'hd:
		begin
			first = 7'h47;	//G
			second = 7'h4F;	//O
			third = 7'h52;	//R
			fourth = 7'h4F;	//O
		end

		4'he:
		begin
			first = 7'h41;	//A
			second = 7'h59;	//Y
			third = 7'h41;	//A
			fourth = 7'h54;	//T
		end


		default:
		begin
			first = 7'h41;	//A
			second = 7'h4D;	//M
			third = 7'h42;	//B
			fourth = 7'h45;	//E
		end 
	endcase


	// calls seven segment value for each letter of the name

	sevenseg sevenseg1( first, segment1);


	sevenseg sevenseg2( second, segment2);
	

	sevenseg sevenseg3( third, segment3);

	
	sevenseg sevenseg4(fourth, segment4);

 
endmodule		
