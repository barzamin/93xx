import sys

vectors = []
with open(sys.argv[1]) as f:
    for line in f:
        vid, string = line.split()
        vectors.append((int(vid[1:]), string[:-1]))

pinmap = {
    1: "clk",
    11: "oe",

    2: "SSER",
    3: "BA13",
    4: "BA12",
    5: "BA7",
    6: "BA6",
    7: "BA5",
    8: "BA4",
    9: "BR_W",
    19: "SDRD",
}

def pin(x):
    if x in pinmap:
        return pinmap[x]
    else:
        return f'p{x}'

print(f'''\
module tb();

initial begin
  $dumpfile("tb.vcd");
  $dumpvars(0, tb);
end

reg {pin(1)}, {pin(11)};
reg {pin(2)}, {pin(3)}, {pin(4)}, {pin(5)}, {pin(6)}, {pin(7)}, {pin(8)}, {pin(9)}, {pin(10)};
wire {pin(12)}, {pin(13)}, {pin(14)}, {pin(15)}, {pin(16)}, {pin(17)}, {pin(18)}, {pin(19)};

SOFT_ACCESS dut(
    .{pin(1)}({pin(1)}),
    .{pin(11)}({pin(11)}),

    .{pin(2)}({pin(2)}),
    .{pin(3)}({pin(3)}),
    .{pin(4)}({pin(4)}),
    .{pin(5)}({pin(5)}),
    .{pin(6)}({pin(6)}),
    .{pin(7)}({pin(7)}),
    .{pin(8)}({pin(8)}),
    .{pin(9)}({pin(9)}),
    .{pin(12)}({pin(12)}),
    .{pin(13)}({pin(13)}),
    .{pin(14)}({pin(14)}),
    .{pin(15)}({pin(15)}),
    .{pin(16)}({pin(16)}),
    .{pin(17)}({pin(17)}),
    .{pin(18)}({pin(18)}),
    .{pin(19)}({pin(19)})
);

''')

print('initial begin')
for i, v in sorted(vectors, key=lambda x: x[0]):
    # if (v[0])
    if v[0] == 'C':
        print('clk = 0; #1; clk = 1; #1; clk = 0; #1; // C')
    elif v[0] == '0':
        print('clk = 0; #1')
    else:
        raise NotImplementedError

    for pi in [2, 3, 4, 5, 6, 7, 8, 9, 11]:
        if v[pi-1] == '0':
            print(f"{pin(pi)} = 1'b0;")
        elif v[pi-1] == '1':
            print(f"{pin(pi)} = 1'b1;")
        elif v[pi-1] == 'X':
            pass
            # print(f"{pin(pi)} = 1'b0;");
        elif v[pi-1] == 'Z':
            print(f"{pin(pi)} = 1'bz;");
        elif v[pi-1] == 'N': continue
        else:
            raise NotImplementedError(f'{v[pi-1]} @ {pi-1}')

    for pi in [12, 13, 14, 15, 16, 17, 18, 19]:
        print(f'// assert ({pin(pi)} == {v[pi-1]})')

    # print('#1;')

print('end')


print('endmodule')