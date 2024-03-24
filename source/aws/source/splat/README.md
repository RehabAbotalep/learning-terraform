## Splat Expression

A [splat expression](https://developer.hashicorp.com/terraform/language/expressions/splat) provides a more concise way to express a common operation that could otherwise be performed with a for expression.

These 2 expressions are equivalent:

`[for o in var.instances : o.name]`

`var.instances[*].name`

**Note**

The splat operator applies only to lists. To get a similar result with a map or object value you must use for expressions.