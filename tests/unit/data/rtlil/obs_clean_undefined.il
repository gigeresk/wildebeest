# Fixture for obs_clean-undefined_cell.ys.
#
# The output y is driven by u_macro, an instance of 'macro'.  The design has
# no module 'macro', so the port directions of u_macro are unknown.  g_w
# computes w = a & b, which only feeds u_macro.
module \top
  wire input 1 \a
  wire input 2 \b
  wire output 3 \y
  wire \w
  cell $and \g_w
    parameter \A_SIGNED 0
    parameter \A_WIDTH 1
    parameter \B_SIGNED 0
    parameter \B_WIDTH 1
    parameter \Y_WIDTH 1
    connect \A \a
    connect \B \b
    connect \Y \w
  end
  cell \macro \u_macro
    connect \i \w
    connect \o \y
  end
end
