
const std = @import("std");
const playScript = @import("other_scripts/playScript.zig");//Importing script in the src folder
//const libcalc = @import("calc");//Importing other script that is not in src folder. Added this script as a library in build.zig
pub fn main() !void {
    // Prints to stderr (it's a shortcut based on `std.io.getStdErr()`)
    std.debug.print("Hello World {s}\n", .{playScript.userName}); //accessing public variable from other scripts from src folder
    //const value = libcalc.add(3,4);
    //const value = lib.add(3,4);
    const value = 7;

    const formatted = try std.fmt.allocPrint(std.heap.page_allocator, "{}", .{value});
    defer std.heap.page_allocator.free(formatted);
    std.debug.print("value in add(3,4) = {s}\n", .{formatted});//Kind of flaot to string casteing

    // stdout is for the actual output of your application, for example if you
    // are implementing gzip, then only the compressed bytes should be sent to
    // stdout, not any debugging messages.
    const stdout_file = std.io.getStdOut().writer();
    var bw = std.io.bufferedWriter(stdout_file);
    const stdout = bw.writer();

    try stdout.print("Run `zig build test` to run the tests.\n", .{});

    try bw.flush(); // don't forget to flush!
}

test "simple test" {
    var list = std.ArrayList(i32).init(std.testing.allocator);
    defer list.deinit(); // try commenting this out and see if zig detects the memory leak!
    try list.append(42);
    try std.testing.expectEqual(@as(i32, 42), list.pop());
    std.debug.print("All your {s} are belong to us.\n", .{"codebase"});
}
