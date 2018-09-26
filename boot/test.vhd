process (clk)
	begin
	if clk¡¯event and clk=¡¯1¡¯ then
		if reset=¡¯1¡¯ then
			data_out <= ¡¯0¡¯;
		else
			if force_high=¡¯1¡¯ then
				data_out <= ¡¯1¡¯;
			else
				if  enable=¡¯1¡¯ then
					data_out <= a and b and c and d;
				end if;
			end if;
		end if;
	end if;
end process;


process (clk)
	begin
	if clk¡¯event and clk=¡¯1¡¯ then
		if reset=¡¯1¡¯ then
			data_out <= ¡¯0¡¯;
		else
			if enable=¡¯1¡¯ then
				if force_high=¡¯1¡¯ then
					data_out <= ¡¯1¡¯;
				else
					data_out <= a and b and c and d;
				end if;
			end if;
		end if;
	end if;
end process;
