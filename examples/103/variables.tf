# List:
variable "var1"                { default = [ "one", "two", "three" ] }
output   "var1_entire_list"    { value = var.var1 }
output   "var1_second_element" { value = var.var1[1] }


# Map:
variable "map1"  { 
  default = { 
    key1 = "value1" 
    key2 = "value2" 
  } 
}
output "map1_entire_map" { value = var.map1 }
output "map1_key1" { value = var.map1["key1"] }

# Map and list:
variable "map2" {
  default = {
    list1 = [ "1", "2", "3", "4" ]
    list2 = [ "one", "two", "three", "four", "five" ]
  }
}
output "map2_entire_map" { value = var.map2 }
output "map2_entire_first_list" { value = var.map2["list1"] }
output "map2_list2_element3" { value = var.map2["list2"][2] }

