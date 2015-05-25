# Write a function, `rec_intersection(rect1, rect2)` and returns the
# intersection of the two.
#
# Rectangles are represented as a pair of coordinate-pairs: the
# bottom-left and top-right coordinates (given in `[x, y]` notation).
#
# Hint: You can calculate the left-most x coordinate of the
# intersection by taking the maximum of the left-most x coordinate of
# each rectangle. Likewise, you can calculate the top-most y
# coordinate of the intersection by taking the minimum of the top most
# y coordinate of each rectangle.
#
# Difficulty: 4/5
def rec_intersection(rect1, rect2)
  rect1_x_left = rect1.flatten[0]
  rect1_x_right = rect1.flatten[2]
  rect1_y_bottom = rect1.flatten[1]
  rect1_y_top = rect1.flatten[3]
  
  rect2_x_left = rect2.flatten[0]
  rect2_x_right = rect2.flatten[2]
  rect2_y_bottom = rect2.flatten[1]
  rect2_y_top = rect2.flatten[3]
  
  rect_int_x_left = 0
  rect_int_x_right = 0
  rect_int_y_bottom = 0
  rect_int_y_top = 0
  
  rect1_x_array = (rect1_x_left..rect1_x_right).to_a
  rect2_x_array = (rect2_x_left..rect2_x_right).to_a
  
  intersect = nil
  
  #Check for intersection
  
  intersect = ((rect1_x_array)&(rect2_x_array)) == [] ? false : true
  
  #Find rect_int_x_left. It is equal to the larger of the left x values.
  
  rect_int_x_left = rect1_x_left >= rect2_x_left ? rect1_x_left : rect2_x_left
  
  #Find rect_int_y_bottom. It is equal to the larger of the bottom y values
  
  rect_int_y_bottom = rect1_y_bottom >= rect2_y_bottom ?  rect1_y_bottom : rect2_y_bottom
  
  #Find rect_int_y_top. It is equal to the smaller of the top y values.
  
  rect_int_y_top = rect1_y_top >= rect2_y_top ? rect2_y_top : rect1_y_top
  
  #Find rect_int_x_right. It is equal to the smaller of the right x values.
  
  rect_int_x_right = rect1_x_right >= rect2_x_right ? rect2_x_right : rect1_x_right
  
  #Assign intersection rectangle
  
  intersection = [ [rect_int_x_left, rect_int_y_bottom] , [rect_int_x_right, rect_int_y_top] ]
  
  #Return final value
  intersect == true ? intersection : nil
  
end
