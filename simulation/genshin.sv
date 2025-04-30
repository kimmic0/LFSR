module genshin(input logic 			 clk, 	//clk input
		   input logic   		 reset,	//reset input
		   input logic 		[7:0] q, 		//output
		   input logic         	 ls, 		//left shift registor
		   input logic         	 push,	//push trigger
		   output logic 		[7:0] segment1,	//first letter
		   output logic		[7:0] segment2,	//second letter
		   output logic		[7:0] segment3,	//third  letter
		   output logic		[7:0] segment4);	

logic path;   					// is the tap
logic [7:0] bts, character, y;		// bts is the seeds, character is character name, y is the new number generated				
logic [7:0] first, second, third, fourth; //each letter in character name


//issue here		
//changes the randomness
always_ff@(posedge clk, posedge reset) 	//positive clock edge and reset
	if(reset) 			character <= 1;	//y <= 1;			resets to 1 or 0	
	else if( q >= 9 )	character <= 1;
	else	
	begin						
		//path = bts[0] ^ bts[1];		//xor the bits
		//y = {path, bts[2:0]};			//adjust the seeds for randomness
		path = bts[0] ^ bts [1];
		character = {path, bts[3:0]};
	end



//left shift					
always_ff@(posedge ls)  				//positive edge of left shift
 if( ls ) bts = q;					//shifting the bits = output



//when switch is toggled
always_ff@(posedge push) 			//positive edge of push
if(push)  character = y;			//if pushed then output seven segment value
else      y = y; 					//otherwise keep randomizing
		


//characters that gets outputted on the seven segment
//4 x 4 = 16
always_comb
	case(character)
		0:
		begin 
			first = 7'h41;	//A
			second = 7'h4D;	//M
			third = 7'h42;	//B
			fourth = 7'h45;	//E
		end
	
		1:
		begin
			first = 7'h43;	//C
			second = 7'h48;	//H
			third = 7'h4F;	//O
			fourth = 7'h4E;	//N
		end

		2:
		begin
			first = 7'h45;	//E
			second = 7'h55;	//U
			third = 7'h4C;	//L
			fourth = 7'h41;	//A
		end

		3:
		begin
			first = 7'h54;	//T
			second = 7'h48;	//H
			third = 7'h4F;	//O
			fourth = 7'h4D;	//M
		end

		4:
		begin
			first = 7'h43; 	//C
			second = 7'h48;	//H
			third = 7'h49;	//I
			fourth = 7'h4C;	//L
		end

		5:
		begin
			first = 7'h49;	//I
			second = 7'h54;	//T
			third = 7'h54;	//T
			fourth = 7'h4F;	//O
		end

		6:
		begin
			first = 7'h41;	//A
			second = 7'h59;	//Y
			third = 7'h41;	//A
			fourth = 7'h4B;	//K
		end

		7:
		begin
			first = 7'h44;	//D
			second = 7'h49;	//I
			third = 7'h4C;	//L
			fourth = 7'h55;	//U
		end
		   
		8:
		begin
			first = 7'h5A;	//Z
			second = 7'h48;	//H
			third = 7'h4F;	//O
			fourth = 7'h4E;	//N
		end

		9:
		begin
			first = 7'h4B;	//K
			second = 7'h41;	//A
			third = 7'h45;	//E
			fourth = 7'h59;	//Y
		end
	endcase


	// calls seven segment value for each letter of the name

	sevenseg sevenseg1( first, segment1);


	sevenseg sevenseg2( second, segment2);
	

	sevenseg sevenseg3( third, segment3);

	
	sevenseg sevenseg4(fourth, segment4);

 
endmodule		
