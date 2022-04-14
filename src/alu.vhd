library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity alu is
    port (
    a, b : in  std_logic_vector(3 downto 0);
    alu_sel : in  std_logic_vector(3 downto 0);
    alu_out : out  std_logic_vector(3 downto 0);
    carryout : out std_logic);
end alu;


architecture behavioral of alu is

signal alu_result : std_logic_vector (3 downto 0);
signal tmp: std_logic_vector (4 downto 0);

begin
    process(a,b,alu_sel)
    begin
        case(alu_sel) is
        when "0000" => -- addition
            alu_result <= std_logic_vector(to_unsigned(
                          (to_integer(unsigned(a)) + to_integer(unsigned(b)))
                          ,4));

        when "0001" => -- subtraction
            alu_result <= std_logic_vector(to_unsigned(
                          (to_integer(unsigned(a)) - to_integer(unsigned(b)))
                          ,4));

        when "0010" => -- multiplication
            alu_result <= std_logic_vector(to_unsigned(
                          (to_integer(unsigned(a)) * to_integer(unsigned(b)))
                          ,4));

        when "0011" => -- division
            alu_result <= std_logic_vector(to_unsigned(
                          to_integer(unsigned(a)) / to_integer(unsigned(b))
                          ,4));

        when "0100" => -- logical shift left
            alu_result <= std_logic_vector(
                          unsigned(a) sll 1);

        when "0101" => -- logical shift right
            alu_result <= std_logic_vector(
                          unsigned(a) srl 1);

        when "0110" => --  rotate left
            alu_result <= std_logic_vector(
                          unsigned(a) rol 1);

        when "0111" => -- rotate right
            alu_result <= std_logic_vector(
                          unsigned(a) ror 1);

        when "1000" => -- logical and 
            alu_result <= a and b;

        when "1001" => -- logical or
            alu_result <= a or b;

        when "1010" => -- logical xor 
            alu_result <= a xor b;

        when "1011" => -- logical nor
            alu_result <= a nor b;

        when "1100" => -- logical nand 
            alu_result <= a nand b;

        when "1101" => -- logical xnor
            alu_result <= a xnor b;

        when "1110" => -- greater comparison
            if(a>b) then
                alu_result <= (others => '1');
            else
                alu_result <= (others => '0');
            end if; 

        when "1111" => -- equal comparison   
            if(a=b) then
                alu_result <= (others => '1');
            else
                alu_result <= (others => '0');
            end if;

        when others => -- default operation
            alu_result <= std_logic_vector(to_unsigned(
                          (to_integer(unsigned(a)) + to_integer(unsigned(b)))
                          ,4));
        end case;
    end process;

    alu_out <= alu_result;
    tmp <= std_logic_vector(to_unsigned(
                  (to_integer(unsigned(a)) + to_integer(unsigned(b)))
                  ,5));
    carryout <= tmp(4);
end architecture behavioral;
