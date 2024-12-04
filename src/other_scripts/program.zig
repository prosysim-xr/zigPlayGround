// program.zig
const std = @import("std");
const sibling = @import("sibling/sibling_script.zig");

pub fn main() void {
    std.debug.print("Calling sibling method...\n", .{});
    sibling.siblingMethod();
}
