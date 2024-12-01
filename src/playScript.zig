const std = @import("std");

pub const Object = union(enum) {//TODO check why this dont work
    Integer: i32,
    Float64: f64,
    Float32: f32,
    Text: []const u8,
};

pub fn add(a: i32, b: i32) i32 {
    return a + b;
}
pub fn add_f64(a: f64, b: f64) f64 {
    return a + b;
}

//Test
pub fn main() !void {
    // Prints to stderr (it's a shortcut based on `std.io.getStdErr()`)
    const value_int = add(3,3);
    const value_float :f64 =  @floatFromInt(value_int);//integer to float casting
    const value :i32 = @intFromFloat(value_float);//integer to float casting

    const formatted = try std.fmt.allocPrint(std.heap.page_allocator, "{}", .{value});
    defer std.heap.page_allocator.free(formatted);
    std.debug.print("value in add(3,3) = {s}\n", .{formatted});//Kind of flaot to string casteing

    std.debug.print("type of value is {}\n", .{@TypeOf(value)});
}
pub fn print_u8_array() void{
    //`!void` results in some error ->  error: error union is ignored
    var str = [2]u8{'v','v'};
    str = [2]u8{'a','a'};
    std.debug.print("variable str is {s}\n", .{str});
}

pub fn print_typeof(o:Object) void{
    std.debug.print("type of v is {}\n", .{@TypeOf(o)});//TODO check
}