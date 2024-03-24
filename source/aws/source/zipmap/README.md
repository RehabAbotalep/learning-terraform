## Zipmap Function

The `zipmap` function is used for creating a map by combining two lists.

`zipmap(keyslist, valueslist)`

## Examples

```
zipmap(["a", "b"], [1, 2])
{
  "a" = 1
  "b" = 2
}

```

```
variable "keys" {
  type    = list(string)
  default = ["a", "b", "c"]
}

variable "values" {
  type    = list(string)
  default = ["1", "2", "3"]
}

locals {
  my_map = zipmap(var.keys, var.values)
}

output "result" {
  value = local.my_map
}

Result : {"a" = "1", "b" = "2", "c" = "3"}

```