// Check for key inputs
right_key = keyboard_check(vk_right);
left_key = keyboard_check(vk_left);
up_key = keyboard_check(vk_up);
down_key = keyboard_check(vk_down);
shift_key = keyboard_check(vk_shift);

// set movement speed based on whether Shift is pressed
if (shift_key) {
    move_spd = 7;
} else {
    move_spd = 1;
}

// Calculate the speed in each direction
xspd = (right_key - left_key) * move_spd;
yspd = (down_key - up_key) * move_spd;

// Update the object's position
x += xspd;
y += yspd;
