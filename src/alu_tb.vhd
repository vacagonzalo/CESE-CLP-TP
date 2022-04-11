library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
--use ieee.std_logic_unsigned.all;
 
entity alu_tb is
    generic(
    constant size: natural := 8;
    constant rotate: natural := 1);
end alu_tb;


architecture test_bench of alu_tb is 
 
    component alu
    generic ( 
    constant size: natural := 8;
    constant rotate: natural := 1);
    port(
    a : in  std_logic_vector(size-1 downto 0);
    b : in  std_logic_vector(size-1 downto 0);
    alu_sel : in  std_logic_vector(3 downto 0);
    alu_out : out  std_logic_vector(size-1 downto 0);
    carryout : out  std_logic);
    end component alu;

    signal a : std_logic_vector(size-1 downto 0) := (others => '0');
    signal b : std_logic_vector(size-1 downto 0) := (others => '0');
    signal alu_sel : std_logic_vector(3 downto 0) := (others => '0');

    signal alu_out : std_logic_vector(size-1 downto 0);
    signal carryout : std_logic;

begin
    dut: alu
    generic map(
    size => size,
    rotate => rotate)
    port map (
    a => a,
    b => b,
    alu_sel => alu_sel,
    alu_out => alu_out,
    carryout => carryout);

    test: process
    begin  
        a <= x"0a";
        b <= x"02";

        alu_sel <= x"0";
        wait for 20 ns;

        alu_sel <= x"1";
        wait for 20 ns;

        alu_sel <= x"2";
        wait for 20 ns;

        alu_sel <= x"3";
        wait for 20 ns;

        alu_sel <= x"4";
        wait for 20 ns;

        alu_sel <= x"5";
        wait for 20 ns;

        alu_sel <= x"6";
        wait for 20 ns;

        alu_sel <= x"7";
        wait for 20 ns;

        alu_sel <= x"8";
        wait for 20 ns;

        alu_sel <= x"9";
        wait for 20 ns;

        alu_sel <= x"A";
        wait for 20 ns;

        alu_sel <= x"B";
        wait for 20 ns;

        alu_sel <= x"C";
        wait for 20 ns;

        alu_sel <= x"D";
        wait for 20 ns;

        alu_sel <= x"E";
        wait for 20 ns;

        alu_sel <= x"F";
        wait for 20 ns;

    end process test;

end architecture test_bench;
